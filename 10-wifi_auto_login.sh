#!/bin/sh

if [ "$1" = "wlp0s20f3" ] ; then
	if [ "$2" = "up" ]; then
		curl 'https://fw.bits-pilani.ac.in:8090/login.xml' -X POST --data-raw "mode=191&username=<your_username>&password=<your_password>"
	fi
fi
