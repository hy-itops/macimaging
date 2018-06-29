# macimaging

1. Package Anaconda3 or other python3 and deploy to the target machine.

2. Package this software and deploy to the target machine. For example, the target location is /Users/Shared/macimaging

3. Create a policy starting with @. For example, @iMac for Art. And assign packages and scripts to the policy.

4. Create a DEP policy in Jamf Pro to run the python file.
For example:
sudo /Users/Shared/macimaging/python/maccustom.py /Users/Shared/macimaging https://jssurl:8443/JSSResource/policies jss_user jss_password

5. After running the python file, the computer name will be renamed and the selected policy starting with @ will be executed

6. The log file is saved in the same location. For example, the location is /Users/Shared/macimaging
