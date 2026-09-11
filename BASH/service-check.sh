#!/bin/bash

set -e 

service="nginx"

if systemctl is-active --quiet "$service"; then
	echo "$service is running"
else
	echo "$service is not running"
	exit 1
fi
exit 0
