---
title: Sensor Station
layout: bare
---

# Sensor Station 

## Single-board computer + sensors + Linux + Python + The Internet.

TL;DR take single-board computer running Linux, add sensors, 
process and store data from the sensors using `Python`, 
then use the data either privately, or share via the Internet.


## Single-board computers

* `BeagleBone Black` (rev C) running `Debian`, or 
* `RaspberryPi` (B+) running `Raspbian` Linux OS.


## Sensors

* [Humidity and Temperature](https://nicegear.co.nz/sensors/freetronics-humidity-and-temperature-sensor-module/)
* [Barometric pressure](https://nicegear.co.nz/sensors/barometric-pressure-sensor-bmp180-breakout/)
* [Light](https://nicegear.co.nz/sensors/freetronics-light-sensor-module/)
* [Rain&Wind](https://nicegear.co.nz/sensors/weather-meters/)
* [Rain](https://nicegear.co.nz/sensors/optical-rain-sensor-model-rg11/)
* [CO2](https://nicegear.co.nz/sensors/dfrobot-co2-sensor/)
* [Seismic](https://nicegear.co.nz/sensors/geophone-sm24/)


## Data Sharing

The idea here is that the data should be distributed 
in a decentralized manner.

Public data sharing: data stored as JSON, distributed 
via BitTorrent.

Private data sharing: data stored as JSON, exchanged 
privately via sftp, VPN, etc.

Other potential use: download and process desired 
public data and create a mashup eg. web app.


### Bittorrent Notes

To achieve that the sensor network will be decentralized, 
Bittorrent trackers can be setup which would track and 
serve data files available from the sensor stations network
in torrent format which is submitted to a tracker.

* [opentracker](https://github.com/masroore/opentracker)


### OpenWeatherMap Notes
 
* [OpenWeatherMap](http://openweathermap.org/) 
* [API](http://openweathermap.org/api)
* [How to connect a weather station to OpenWeatherMap](http://openweathermap.org/stations#how)
* [Weather station transmission protocol](http://openweathermap.org/stations#trans)
* [Other DIY projects](http://openweathermap.org/stations#DIY)


## Experiments

* <a href="/blog/2014/10/12/quiet-sunday-session/">Temperature reading using `RaspberryPi` and `DS18B20`</a>


