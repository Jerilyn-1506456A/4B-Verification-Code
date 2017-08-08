#!/bin/bash

printf "\e[0m Checking if the MaxAuthTries is correct:  \n"
if grep "^MaxAuthTries 4" /etc/ssh/sshd_config > /dev/null; then # Grep "MaxAuthTries 4" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
