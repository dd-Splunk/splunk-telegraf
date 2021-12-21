#!/bin/bash
source .env
# Test HEC with token
curl -k https://localhost:8088/services/collector/event -H "Authorization: Splunk ${SPLUNK_HEC_TOKEN}" -d '{"event": "hello world"}'

# Test MQTT input
TEMP=$((1 + $RANDOM % 30))

docker container exec mosquitto mosquitto_pub \ 
  -t 'bedroom/temperature' \
  -m "bedroom_temperature celsius=$TEMP"

# Test statsd input
# for i in {1..50}; do echo $i;echo "foo:1|c" | nc -u -w0 127.0.0.1 8125; done