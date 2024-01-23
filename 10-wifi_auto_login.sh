#!/bin/sh

if [ "$1" = "<your_interface>" ] ; then
    if [ "$2" = "up" ]; then
        if  iwgetid | grep -qs ":\"BITS-STUDENT\""  ||  iwgetid | grep -qs ":\"BITS-STAFF\"" ; then
            curl 'https://fw.bits-pilani.ac.in:8090/login.xml' -X POST --data-raw "mode=191&username=<your_username>&password=<your_password>"
        fi
    fi
fi
