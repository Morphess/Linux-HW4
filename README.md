# Linux Homework

## Tasks

1. Created user `bob`
2. Added user to sudo group
3. Created script to change hostname to `ubuntu22`
4. Executed script and rebooted system
5. Installed nginx
6. Verified nginx service
7. Checked open ports using netstat

## Script

```bash
#!/bin/bash

if [ "$EUID" -ne 0 ]; then
echo "Run this script with sudo!"
exit 1
fi

sudo hostnamectl set-hostname ubuntu22
echo "Hostname changed to ubuntu22"
