#!/bin/bash
# taniacomputer.com, March 2017
# Example of the JSS script that you would run to commence your company's DEP Mac Setup
# All custom policy triggers are for example purposes only, so unless your JSS uses the same
# customer trigger string, they will all fail.

# Trigger app 
TRIGGER="/Users/pyang/Documents/Work/MacDEP/Trigger/Trigger.app/Contents/MacOS/Trigger"

# Names of additional apps
ADOBE_CC_NAME="Adobe Creative Cloud 2017"
ENDNOTE_NAME="EndNote X8"
ACROBAT_NAME="Adobe Acrobat DC"
VMWARE_NAME="VMware Fusion"
# Their corresponding triggers
ADOBE_CC_TRIGGER="install_cc"
ENDNOTE_TRIGGER="endnote"
ACROBAT_TRIGGER="install_acrobat_dc"
VMWARE_TRIGGER="vmware_7"

OUTPUT_1=/tmp/output1.html
if [ -f "$OUTPUT_1" ]
then
    rm "$OUTPUT_1"
fi
OUTPUT_2=/tmp/output2.html
if [ -f "$OUTPUT_2" ]
then
    rm "$OUTPUT_2"
fi

# Trigger will present a fullscreen splash screen so that the user initiates the setup workflow.
# We want the results of each custom trigger to be presented to output.html

results=$(sudo "$TRIGGER" --fullscreen --file /tmp/start.html \
wait --file /tmp/status1.html "policy -trigger config_items","Configuration Items" --file /tmp/status2.html "policy -trigger citrix","Citrix Receiver" \
--file /tmp/status3.html "policy -trigger fetch","FTP Client" \
--file /tmp/status4.html "policy -trigger 'microsoft office'","Microsoft Office 2016" \
--file /tmp/status5.html "policy -trigger chrome","Google Chrome" \
--file /tmp/status6.html "sleep 3" \
--file /tmp/status7.html "sleep 3" \
--file /tmp/extra_apps.html wait \
--output "$OUTPUT_1")

if [[ ! -z $results ]]
then
	# As there is a formParse link in extra_apps.html, we want to parse the form values
	# returned by Trigger, and use them to trigger the relevant additional app install policies
	for line in $results; do

		app=$(echo "$line" | sed 's/%20/ /g' | sed 's/%2f/\//g' | sed 's/=on//g')
		# For each app selected, we want to create a HTML file so that we have a webView to
		# present as we run the policy trigger command
		
		file="/tmp/$app.html"
                if [ -f "$file" ]
                then
                        rm "$file"
                fi
		# Get the app name, to display in the webview
		case "$app" in 
		"$ADOBE_CC_TRIGGER")
			app_name="$ADOBE_CC_NAME"
			;;
		"$ENDNOTE_TRIGGER")
			app_name="$ENDNOTE_NAME"
			;;
		"$ACROBAT_TRIGGER")
			app_name="$ACROBAT_NAME"
			;;
		"$VMWARE_TRIGGER")
			app_name="$VMWARE_NAME"
			;;
		*) # Worst case scenario the trigger name gets displayed
			app_name="$app"
			;;
		esac
		# Webview file
		echo "<html>
			  <head>
  			  <title>ACME Mac Setup</title>
    		  <link rel=\"stylesheet\" type=\"text/css\" href=\"stylesheet.css\">
			  </head>
			  <body>
			  <div class=\"titleBar\"><img class=\"titleIcon\" src=\"http://www.nashbox.com/new/wp-content/uploads/2012/01/acme_logo.jpg\"><h1 class=\"titleText\">ACME Mac Setup</h1></div><div class=\"documentWrapper\"><div id=\"mainTitle\"><img src=\"https://media.giphy.com/media/fo6l1ADrd03Is/giphy.gif\"><br /><p>Installing $app_name</div></div><div class=\"footerBar\"><div class=\"footerText\">For assistance, contact ACME's Service & Support Centre</a><br />www: acme.com/serviceandsupport | ext. 88888 | phone: (03) 9925 8888</div></div>
			  </body></html>" > "$file"

		# We want to construct the sequence of webView/command pairs
		if [[ -z $command ]]
		then
			command="--file /tmp/$app.html \"policy -trigger '$app'\",\"$app_name\""
		else
			command="$command --file /tmp/$app.html \"policy -trigger '$app'\",\"$app_name\""
		fi	
	done	
	install_command="sudo $TRIGGER --fullscreen $command --file /tmp/finish.html wait --output $OUTPUT_2"
	# Runs the Trigger command for all selected additional apps
	eval $install_command
else
	# You'll fall into here if the user selects to Cancel before the setup even began
	# at start.html, or
	# if they didn't choose any additional apps.
	# You could check for the existence of the corresponding output file to surmise
	# at what point in the workflow this exit is being called.
    exit 0
fi


    
