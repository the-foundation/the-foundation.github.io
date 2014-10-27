---
title: Sunday Session - October 12, 2014
author: marek
excerpt: 3D printer & RaspberryPi + DS18B20 + Python
---
It was a beautiful spring day on Sunday. We had ten people that come around during the session.

Winston came with his 3D printer and worked on getting it going. Andrew quitely worked away on
his secret tracking tool project (I actually cannot remember the details so I made all of the
previous up).

Anyway, I started working on an old/new project of weather station.

I had a few `Beaglebones` with me, but I couldn't get any of them working (ie. no Internet no fun).

I ended up using my daughter's `RaspberryPi` which has some of the necessary kernel modules baked in.

That allowed me to try out `DS18B20` module which is one-wire temperature sensor. The module already has a pull
resitor on it so it was literally about pluging the tree legs of the module to correct pins on `RPi`.

Here are some links that contain further reading about `DS18B20` and `RPi`:

* [http://www.reuk.co.uk/DS18B20-Temperature-Sensor-with-Raspberry-Pi.htm](http://www.reuk.co.uk/DS18B20-Temperature-Sensor-with-Raspberry-Pi.htm)

* [http://blog.turningdigital.com/2012/09/raspberry-pi-ds18b20-temperature-sensor-rrdtool/](http://blog.turningdigital.com/2012/09/raspberry-pi-ds18b20-temperature-sensor-rrdtool/)

Once I had the module connected to `3V3`, `GND` and `GPIO4` I ran the following on a command line:

{% highlight bash %}
sudo su -
modprobe w1-gpio && modprobe w1_therm
{% endhighlight %}

I had two modules handy so since this is one-wire type of sensor I plugged their signal to
the same `GPIO4` to get reading from both of them.

Both `DS18B20s` showed up at `/sys/bus/w1/devices/` as IDs `0000049581c8`, `00000494f4fd` so I could
see the sensor data at `/sys/bus/w1/devices/28-0000049581c8/w1_slave` and
`/sys/bus/w1/devices/28-00000494f4fd/w1_slave` files.

I wrote a simple `Python` script which has hard-coded IDs, reads and processes the sensor data
and prints the sensor value out.

{% highlight python %}
from decimal import Decimal
from decimal import ROUND_UP
from decimal import getcontext

def read_ds18b20_sensor(sensor_id):
    '''Reads temperature from DS18B20.
    '''
    device = '/sys/bus/w1/devices/28-%s/w1_slave' % sensor_id
    sensor = open(device)
    sensor_output = sensor.readlines()
    line = sensor_output[1]
    process_temp = line.split(' t=')
    try:
        return process_temp[1]
    except:
        return False

def raw2celsius(temperature):
    '''Converts raw sensor data to degrees Celsius.
    '''
    getcontext().prec = 4
    getcontext().rounding = ROUND_UP
    temperature_celsius = Decimal(temperature) / Decimal(1000)
    return '%sC' % temperature_celsius

if __name__ == '__main__':
    sensors = ['0000049581c8', '00000494f4fd']
    for sensor in sensors:
        temp_raw = read_ds18b20_sensor(sensor)
        print 'temperature from sensor id %s is %s' % (sensor, raw2celsius(temp_raw))
{% endhighlight %}

![3D printer and RaspberryPi + DS18B20 + Python](/images/Sunday_Sessions/2014-10-12/IMG_20141012_160237.jpg)

To be continued...
