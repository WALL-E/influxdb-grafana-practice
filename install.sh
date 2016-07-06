#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo " You requested a scan type which requires root privileges"
    exit 1
fi

command -v influx 1>/dev/null
ret=$?
if test $role -ne 0
then
    yum install https://dl.influxdata.com/influxdb/releases/influxdb-0.13.0.x86_64.rpm
    echo "influxdb install ok"
else
    echo "influxdb installed"
fi

command -v grafana-cli 1>/dev/null
ret=$?
if test $role -ne 0
then
    yum install https://grafanarel.s3.amazonaws.com/builds/grafana-3.0.4-1464167696.x86_64.rpm
    echo "grafana install ok"
else
    echo "grafana installed"
fi


