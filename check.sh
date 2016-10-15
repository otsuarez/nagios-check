#!/bin/bash

# adapted from https://github.com/discourse/discourse_docker/blob/master/image/base/boot
# this script becomes PID 1 inside the container, catches termination signals, and stops
# processes managed by runit

if [ -z "$(ls -A /opt/nagios/etc)" ]; then
    echo "Started with emty ETC, copying example data in-place"
    cp -Rp /orig/etc/* /opt/nagios/etc/
fi

if [ -z "$(ls -A /opt/nagios/var)" ]; then
    echo "Started with emty VAR, copying example data in-place"
    cp -Rp /orig/var/* /opt/nagios/var/
fi

exec /opt/nagios/bin/nagios -v /opt/nagios/etc/nagios.cfg
exec echo "Hello World!"

#trap shutdown SIGTERM SIGHUP SIGINT

