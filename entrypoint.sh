#!/bin/sh

chown apache:apache -R /cache 
httpd -d /httpd-conf -f httpd.conf -e info -DFOREGROUND
