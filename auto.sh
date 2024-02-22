#!/bin/bash
echo "name of file path is:"
sleep 1
find / -name deploy.cfg
sleep 2
echo "display content of success.txt file:"
find / -name success.txt -exec cat {} \;
find / -name success.txt -exec cat {} \; > success-file
sleep 1
sed -i '$i I am staying laser focused and wont let anything distract me at all' success-file
sleep 2
echo "This is another way of trying to add a sentence to the file" >> success-file
sleep 2
cat success-file
sleep 1
echo "What group does success.txt belong to?"
sleep 1
ls -ll  success-file | gawk '{print $4}'
sleep 2
adduser u5bt
if [$? -eq 0]; then
echo "user u5bt already exit"
    else
echo "User does not exit. User added"
fi
sleep 1
chown u5bt success-file
sleep 1
echo "who is the new owner of success-file:"
sleep 1
gawk '{print $3}' success-file
sleep 1
chmod - "John Mary" u5bt
sleep 1
echo "Change the file permission:"
sleep 2
chown 760 success-file
gawk '{print $1}' success-file
sudo passwd -d u5bt #I don't know if one can automate password creation.
sudo passwd -e u5bt #Force user to create new password when next they log in
sleep 2
useradd sarah -s /sbin/nologin #user created for sarah with no login
sleep 2
groupadd network
sleep 2
tail -3 /etc/group #to display the group just created.
sleep 2
useradd henry -G network #user henry created.
Sleep 2
groups henry #display henry’s groups.
sleep 2
echo "Does Henry have issue logging in (new contractor)."
sleep 1
if [$? - eq 0]; then
echo "check log in credentials are good. Check if server is down or up by looking at current memory. I will verify the code of on Vagrantfile."
else
echo “Okay, no issues but create new password.”
passwd -e henry
fi
sleep 2
echo "install apache. This will be installed quietly"
yum install httpd -y -q
sleep 2
systemctl status httpd
sleep 2
systemctl start httpd
systemctl enable httpd
sleep 2
systemctl status httpd
echo "I feel like I am sitting in the office working for real and making the bg $$$" > vi /var/www/hmtl/ html.index
