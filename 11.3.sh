#!/bin/bash

printf "\e[0m Determine the current settings in userID lockout \n "
printf "\e[0m Password-auth \n"
if grep pam_faillock /etc/pam.d/password-auth > /dev/null; then # Grep "pam_faillock" from /etc/pam.d/password-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m System-auth \n"
if grep pam_faillock /etc/pam.d/system-auth > /dev/null; then # Grep "pam_faillock" from /etc/pam.d/system-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
