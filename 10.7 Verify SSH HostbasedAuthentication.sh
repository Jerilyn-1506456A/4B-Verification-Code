#!/bin/bash

printf "\e[0m Checking if HostbasedAuthentication is disabled:  \n"
if grep "^HostbasedAuthentication no" /etc/ssh/sshd_config > /dev/null; then # Grep "HostbasedAuthentication no" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n" 
else
        printf "\033[33;31m FAIL \n"
fi
