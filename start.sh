#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "error: requires root privileges"
    exit 1
fi

service influxdb start
service grafana-server start
