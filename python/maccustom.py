#!/anaconda3/bin/python
# Written By Peter Yang


import subprocess
import os
import sys
import time


import requests
import base64
import xml.dom.minidom

from subprocess import Popen

import logging 

import argparse



def run_command(cmd):
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = proc.communicate()
    result_dict = {
        "stdout": out,
        "stderr": err,
        "status": proc.returncode,
        "success": True if proc.returncode == 0 else False
    }
    logging.info(str(result_dict))
    return result_dict

def run_jamf_policy(p):
    """Runs a jamf policy by id or event name"""
    cmd = ['/usr/local/bin/jamf', 'policy']
    if isinstance(p, str):
        cmd.extend(['-event', p])
    elif isinstance(p, int):
        cmd.extend(['-id', str(p)])
    else:
        raise TypeError('Policy identifier must be int or str')
    proc = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    out, err = proc.communicate()
    result_dict = {
        "stdout": out,
        "stderr": err,
        "status": proc.returncode,
        "success": True if proc.returncode == 0 else False
    }
    logging.info(str(result_dict))
    return result_dict

def main():
    parser=argparse.ArgumentParser()
    parser.add_argument("base_dir",help="base directory")
    parser.add_argument("jss_url",help="jss url")
    parser.add_argument("jss_username",help="jss username")
    parser.add_argument("jss_password",help="jss password")
    args=parser.parse_args()
    print(args.base_dir+"/"+args.jss_url+"/"+args.jss_username+"/"+args.jss_password)
    base_directory=args.base_dir
    UsernameVar=args.jss_username
    PasswordVar=args.jss_password
    JssUrl=args.jss_url

    logging.basicConfig(filename=base_directory+"/imaging.log",level=logging.DEBUG)
    #generate the software options list for startup.html
    generate_list_startup(base_directory,UsernameVar,PasswordVar,JssUrl)
    
    #show customize screen
    cmd_str = base_directory+'/Trigger/Trigger.app/Contents/MacOS/Trigger -f '+base_directory+'/startup.html wait --fullscreen'
    cmd = cmd_str.split()    
    output = subprocess.check_output(cmd);
    output_1 = str(output,'utf-8')
    
    #split each line of output to an array
    output_2 = output_1.split('\n')
    
    is_attr_valid=False
    
    while is_attr_valid==False:
        #iterate through each line
        for output_item in output_2:
            #split the attribute name and value
            output_item_1 = output_item.split('=')
            if(len(output_item_1)==2):
                #print(output_item_1)
                if(output_item_1[0]=='computer_name'):
                    computer_name = output_item_1[1]
                    #print('compute name:'+output_item_1[1])
                elif(output_item_1[0]=='computer_code'):
                    computer_code = output_item_1[1]
                    #print('computer code:'+output_item_1[1])
                elif(output_item_1[0]=='software_option'):
                     #print('software option:'+output_item_1[1])
                     software_option=output_item_1[1]
                     software_option=software_option.replace("%20", " ")
        if computer_name!='' and computer_code!='' and software_option!='':
            is_attr_valid=True
        else:
            #Show invalid attributes screen
            invalid_cmd_str = base_directory+'/Trigger/Trigger.app/Contents/MacOS/Trigger -f '+base_directory+'/invalidattributes.html wait --fullscreen'
            invalid_cmd = invalid_cmd_str.split()    
            invalid_output = subprocess.check_output(invalid_cmd)
            
            invalid_cmd_str = base_directory+'/Trigger/Trigger.app/Contents/MacOS/Trigger -f '+base_directory+'/startup.html wait --fullscreen'
            invalid_cmd = invalid_cmd_str.split()    
            invalid_output = subprocess.check_output(invalid_cmd)
            invalid_output_1 = str(invalid_output,'utf-8')
            output_2 = invalid_output_1.split('\n')
            
    #show installation screen
    #generate_install_apps("There are "+str(total_software_count)+" software to install")
    generate_install_apps("Installing software, please wait ...",base_directory)
    time.sleep(2)
    cmd = [base_directory+'/Trigger/Trigger.app/Contents/MacOS/Trigger', '-f', base_directory+'/setup_mac.html', 'wait','--fullscreen']   
    p = Popen(cmd)

    #change computer name
    change_computername_cmd1=["scutil","--set","HostName",computer_name]
    change_computername_cmd2=["scutil","--set","LocalHostName",computer_name]
    change_computername_cmd3=["scutil","--set","ComputerName",computer_name]
    change_computername_cmd4=["dscacheutil","-flushcache"]
    show_computername_cmd=["scutil","--get","ComputerName"]
    result1=run_command(change_computername_cmd1)
    print(str(result1))
    result2=run_command(change_computername_cmd2)
    print(str(result2))
    result3=run_command(change_computername_cmd3)
    print(str(result3))
    result4=run_command(change_computername_cmd4)
    print(str(result4))
    result5=run_command(show_computername_cmd)
    print(str(result5))
   
    #trigger software installation policies
    #get policy id
    policy_id=""
    tmp_policy_list=get_policy_list(UsernameVar,PasswordVar,JssUrl)
    for tmp_policy in tmp_policy_list:
        tmp_policy_name = str(tmp_policy['name'])
        tmp_policy_name=tmp_policy_name.replace("@", "")
                
        if software_option==tmp_policy_name:
            policy_id=str(tmp_policy['id'])
            break
    
    if policy_id!="":
        try:
            print("policy id:"+policy_id)
            result=run_jamf_policy(int(policy_id))
        except FileNotFoundError:
            p.terminate()
            return
        
        #poll=p_policy.poll()
        print("return result:"+str(result))
        print("success code:"+str(result['success']))
      
    p.terminate()
    
    #show complete screen
    cmd = [base_directory+'/Trigger/Trigger.app/Contents/MacOS/Trigger', '-f', base_directory+'/finish_mac.html', 'wait','--fullscreen']   
    p = Popen(cmd)
    
    
    

def generate_install_apps(install_log,base_directory):
    #replace software option list with real values
    print(install_log)
    out_file = open(base_directory+"/setup_mac_tmp.html", "w")
    cmd_replace=['sed', "s/h_install_log/" + install_log+ "/g",base_directory+"/setup_mac_template.html" ]
    subprocess.call(cmd_replace, stdout=out_file);
    
    #copy the temp file to startup.html
    cmd_copy_str="cp -f "+base_directory+"/setup_mac_tmp.html "+base_directory+"/setup_mac.html"
    cmd_copy = cmd_copy_str.split()
    subprocess.check_output(cmd_copy);
    
def generate_list_startup(base_directory,UsernameVar,PasswordVar,JssUrl):
    select_list="<option><\/option>"
    policy_list=get_policy_list(UsernameVar,PasswordVar,JssUrl)
    for policy in policy_list:
        policy_name = str(policy['name'])
        policy_name=policy_name.replace("@", "")
        select_list = select_list + "<option>"+policy_name+"<\/option>"    
    
    #cmd_replace_str="sed \'s/h_select_list/" + select_list+ "/g\' ../startup_template.html>../startup_tmp.html"
    #cmd_replace = cmd_replace_str.split()
    
    #replace software option list with real values
    out_file = open(base_directory+"/startup_tmp.html", "w")
    cmd_replace=['sed', "s/h_select_list/" + select_list+ "/g",base_directory+"/startup_template.html" ]
    subprocess.call(cmd_replace, stdout=out_file);
    
    #copy the temp file to startup.html
    cmd_copy_str="cp -f "+base_directory+"/startup_tmp.html "+base_directory+"/startup.html"
    cmd_copy = cmd_copy_str.split()
    subprocess.check_output(cmd_copy);
    #output = subprocess.check_output(cmd);
    #print(select_list)
    #print(policy_list)


def get_policy_list(UsernameVar,PasswordVar,JssUrl):
    
    policy_list=[]
    r=requests.get(JssUrl,auth=(UsernameVar, PasswordVar),verify=False)
    
    xmldoc = xml.dom.minidom.parseString(r.text) # or xml.dom.minidom.parseString(xml_string)
    #print(r.text)
    
    policies=xmldoc.getElementsByTagName("policy")
    policy_list=[]
    
    
    for policy in policies:
        policy_name=policy.getElementsByTagName('name')[0].firstChild.nodeValue
        #print(policy_name)
        if "@"  in policy_name:
           policy_id=policy.getElementsByTagName('id')[0].firstChild.nodeValue       
           #print(policy_id)
           policy_list.append({'name':policy_name,'id':policy_id})
    return policy_list

         
if __name__ == "__main__": main()