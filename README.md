# Led intensity controler for IKEA JANSJÖ using PIC 10F200

This project is for improving the IKEA JANSJÖ led light with power control. Includes both software and hardware design.

I have build myself the circuit using a prototyping board of 15 x 4 tenths of an inch, that fits inside the original lamp switch.

I have also designed a 2 layer pcb board for smd components with micro-usb port for programming the pic. (Not tested yet, boards are on the way)

It consist of two push-buttons, one for increasing power, and another for decreasing. Pressing the two buttons at the same time switches on and off the ligth.

The design can be adapted for use in other similar applications. Be aware on the voltage and current of the device.

**WARNING!** There are two kinds of power suppliers for LED lamps: Voltage sources and current sources. This design is *ONLY* meant for the Voltage sources.

_UPDATE_: Having seen the teardown of the device in this video: https://www.youtube.com/watch?v=H4aymFmak9Y I realized that although this circuit is powered by a voltage source, is later converted to current source to drive the LED.

Having seen the comments on the video, seems that the main point of failure of the lamp are the switches (already fixed that ;)) and the power supply. There also seem that the driver chips are able to work at 5V, so the design could be rebuild to power the lamp from uUSB connector, using standard USB power supplies.
