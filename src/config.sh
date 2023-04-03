#!/bin/bash -xe

# Update with optional user data that will run on instance start.
# Learn more about user-data: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

HOST=uname -n
cd /mnt/root/
git clone https://github.com/KA0x0/channel-4-guix
guix system init /home/root/channel-4-guix/home/$HOST-config.scm /mnt
