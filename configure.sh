#!/usr/bin/env bash
trap 'echo "Warning: A command has failed. Exiting the script. Line was ($0:$LINENO): $(sed -n "${LINENO}p" "$0")"; exit 3' ERR
set -Eeuo pipefail

# Update with optional user data that will run on instance start.
# Learn more about user-data: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html

HOST=uname -n
cd /mnt/root/
git clone https://github.com/KA0x0/GURU
guix system init /root/GURU/home/$HOST-config.scm /mnt
