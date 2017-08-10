#!/bin/bash

printf "\e[0m Checking if /etc/cron.d directory has the correct permissions \n"
if ls -ld /etc/cron.d | grep drwx------ >/dev/null; then # Grep the permissions from ls -ld /etc/cron.d to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
