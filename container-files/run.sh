#!/bin/bash

/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/memcache start
/etc/init.d/zenoss start
sleep 10000
