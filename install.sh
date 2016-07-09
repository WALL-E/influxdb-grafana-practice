#!/bin/bash

role=`id -u`
if test $role -ne 0
then
    echo "error: requires root privileges"
    exit 1
fi

command -v influx 1>/dev/null
ret=$?
if test $ret -ne 0
then
    url="https://dl.influxdata.com/influxdb/releases/influxdb-0.13.0.x86_64.rpm"
    echo "downloading: $url"
    yum install $url
    echo "influxdb install ok"
else
    echo "influxdb installed"
fi

command -v grafana-cli 1>/dev/null
ret=$?
if test $ret -ne 0
then
    url="https://grafanarel.s3.amazonaws.com/builds/grafana-3.0.4-1464167696.x86_64.rpm"
    echo "downloading: $url"
    yum install $url
    echo "grafana install ok"
else
    echo "grafana installed"
fi


