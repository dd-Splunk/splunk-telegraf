#!/bin/bash
APP=splunk-telegraf
APP_FILE=${APP}.spl
APP_LOCATION=/opt/splunk/share/splunk/app_packages/${APP_FILE}
source .env
echo "Asking Splunk to package ${APP_FILE} ..."
curl -s -k -u admin:$SPLUNK_PASSWORD https://localhost:8089/services/apps/local/$APP/package
echo "Downloading ${APP_FILE} ..."
docker cp so1:$APP_LOCATION .
echo "Expanding ${APP_FILE} ..."
tar -xf ${APP_FILE} -C apps/
echo "Done."