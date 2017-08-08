#!/bin/bash

printf "\e[0m Determine if restriction of login to system console is configured correctly \n "
if ls -ld /etc/securetty| cut -d " " -f 5 | grep 0 > /dev/null; then
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
