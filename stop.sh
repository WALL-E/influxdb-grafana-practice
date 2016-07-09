#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "error: requires root privileges"
    exit 1
fi

service influxdb stop
service grafana-server stop
