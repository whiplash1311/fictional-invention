#!/bin/bash

## Purpose for running OutlookSearchRepair via SelfService.

# Shutting down Outlook before proceeding on with the repair utillity.
echo "Shutting down Outlook"
pid=$(ps axo pid,command | grep "Microsoft Outlook" | awk '{print $1}')

echo "Pid is: "$pid

if [ "$pid" ]
    then
        echo "Outlook is Running"
        echo "Closing Outlook"
            osascript -e 'quit app "Microsoft Outlook"'
        echo "Outlook closed"
    else
        echo "Outlook not running"
    fi

sleep 05

# open Outlook Search Repair application from Microsoft
echo "Opening Outlook Search Repair"
open -a /private/tmp/OutlookSearchRepair/OutlookSearchRepair.app

echo "Repair Utillity started"
exit 0
