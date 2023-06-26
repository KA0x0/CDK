#!/bin/bash -xe

# Update with optional user data that will run on instance start.
# Learn more about user-data: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

HOST=uname -n
cd /mnt/root/
git clone https://github.com/KA0x0/C4G
guix system init /root/C4G/home/$HOST-config.scm /mnt
