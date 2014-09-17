---
title: Optical Pickup Head driver board
layout: bare
---

# Optical Pickup Head driver board

The XBox 360, and every other device that reads DVDs, contains an optical pickup head (OPH). The OPH is a small plastic module housing all the optics required to detect tiny variations in distance between the module laser and the reflective surface of the DVD spinning beneath it. These distance variations correspond to the microscopic 'pits' in the surface of the DVD that represent the digital information stored on it.  

![Alt text](/images/Projects/oph/oph.JPG "An XBox 360 Optical Pickup Head")

The ability to measure these small distance variations with a cheap, compact optoelectronic module suggests a number of interesting scientific and environmental sensing applications, such as:
<ul>
<li>detection of seismic activity</li>
<li>detection of low frequency acoustic signals</li>
<li>measurement of cantilever deflection in an atomic force microscope</li>
</ul>
The OPH is effectively a tiny optics laboratory containing a laser diode, a quadrant photodetector, a beam splitter, focussing lenses and linear motors to direct the laser beam.



The driver board will provide the I/O resources to power the laser diode, measure the Focus Error Signal (FES), and control the X and Z translation of the focussing lens. This will be done via a Propeller multicore microcontroller. Communications with the microcontroller (data transfer, firmware updates etc) will be via USB.

**Once the hardware design has been brought up to a useful state, the CAD files will be released under an appropriate open source licence. The same goes for the source for the firmware.**

An early version of the driver board:  

![Alt text](/images/Projects/oph/v1 pcb.JPG "An early version of the driver board")

Screencap of v2 PCB layout in progress (17/09/2014):  

![Alt text](/images/Projects/oph/v2 screencap.jpg "Screencap of v2 PCB layout in progress")
