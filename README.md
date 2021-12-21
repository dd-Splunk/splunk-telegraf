# splunk-telegraf

## To publish a new version of the app

After pushing all changes to Git, create a new version tag in the [SemVer format](https://semver.org): vx.y.z, and push it

```bash
git tag vx.y.z
git push --tags
````

This will initiate a new packaging of the app while embedding the version in the `app.conf` file.

## Testing with Docker

A `docker-compose.yml`is included. 
Execute the following to bring up your deployment:

```bash
$ SPLUNK_PASSWORD=<password> docker-compose up -d
```

## Reference

- From thing to MQTT
  Arduino blog: https://docs.arduino.cc/tutorials/mkr-1000-wifi/mkr-1000-mqtt-device-to-device 
- From MQTT to telegraf
  Influxdata blog: https://www.influxdata.com/blog/mqtt-topic-payload-parsing-telegraf/
- From statsd to telegraf
  Influxdata blog: https://www.influxdata.com/blog/getting-started-with-sending-statsd-metrics-to-telegraf-influxdb/ 
- From telegraf to splunk HEC:
  Splunk blog : https://www.splunk.com/en_us/blog/it/the-daily-telegraf-getting-started-with-telegraf-and-splunk.html 

