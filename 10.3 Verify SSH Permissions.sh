#!/bin/bash

#10.3 Verify SSH Permissions
printf "\e[0m Checking the SSH permissions:  \n"
if /bin/ls -l  /etc/ssh/sshd_config | grep -e "-rw-------. 1 root root" > /dev/null ; then # Grep the permissions from ls -l /etc/ssh/sshd_config to ensure permissions is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
