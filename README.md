# macimaging

1. Package the software and deployed to the target machine. For example, the location is /Users/Shared/macimaging

2. Create a policy starting with @. For example, @iMac for Art. 

3. Create a policy in Jamf Pro to run the python file.
For example:
sudo /Users/Shared/macimaging/python/maccustom.py /Users/Shared/macimaging https://jssurl:8443/JSSResource/policies jss_user jss_password

4. After running the python file, the computer name will be renamed and the selected policy will be executed

5. The log file is saved in the same location. For example, the location is /Users/Shared/macimaging
