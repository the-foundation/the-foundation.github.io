---
title: Sensor Station
layout: bare
---

# Single-board computer + sensors + Linux + Python + The Internet.

TL;DR take single-board computer running Linux, add sensors, 
process and store data from the sensors using `Python`, 
then use the data either privately, or share via the Internet.

Initial experiment: 
<a href="/blog/2014/10/12/quiet-sunday-session/">temperature reading 
using `RaspberryPi` and `DS18B20`</a>.

Single-board computer: `BeagleBone Black` (rev C), or `RaspberryPi` (B+) 
running `Debian`/`Raspbian` Linux OS.

Potential sensors:

* [Humidity and Temperature](https://nicegear.co.nz/sensors/freetronics-humidity-and-temperature-sensor-module/)
* [Barometric pressure](https://nicegear.co.nz/sensors/barometric-pressure-sensor-bmp180-breakout/)
* [Light](https://nicegear.co.nz/sensors/freetronics-light-sensor-module/)
* [Rain](https://nicegear.co.nz/sensors/optical-rain-sensor-model-rg11/)
* [CO2](https://nicegear.co.nz/sensors/dfrobot-co2-sensor/)
* [Rain&Wind](https://nicegear.co.nz/sensors/weather-meters/)

Public data sharing - decentralized model: data stored as JSON/..., 
distributed via BitTorrent.

Private data sharing - end-to-end encryption: data stored as JSON/..., 
exchanged privately via end-to-end encryption. 

Another option to share data: 
[OpenWeatherMap](http://openweathermap.org/).

Other potential use: download and process desired public data and 
create a mashup eg. web app using the public data.
