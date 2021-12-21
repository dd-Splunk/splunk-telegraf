#!/bin/bash
source .env
curl -k https://localhost:8088/services/collector/event -H "Authorization: Splunk ${SPLUNK_HEC_TOKEN}" -d '{"event": "hello world"}'
#
for i in {1..50}; do echo $i;echo "foo:1|c" | nc -u -w0 127.0.0.1 8125; done