#!/bin/bash

LOGFILE=/var/log/cert_renew_log/`date '+%Y%m%d%H%M'`_cert_renew.log
exec > $LOGFILE 2>&1
/bin/systemctl stop nginx
/usr/bin/letsencrypt renew
/bin/systemctl start nginx
exit 0
