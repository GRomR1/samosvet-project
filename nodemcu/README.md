# NodeMCU code for the big model of a traffic light

There is code of ESP8266 controller that allow to get command by HTTP protocol over WiFi.
The project based on [nodemcu-httpserver](https://github.com/marcoskirsch/nodemcu-httpserver)

I just add some changes and these files:
* [lights.lua](nodemcu/program/http/lights.lua)
* [init-gpio.lua](nodemcu/program/init-gpio.lua)

There is not a final result. I haven't got much time to understand how it works.
But may be it can helps me or someone in the future.

My actions to write my code to the MCU:
1. Edit Makefile - change path, number and speed of COM port
```
NODEMCU-UPLOADER=
PORT=COM7
SPEED=115200
```

2. Open console and change directory to the `<program>` path:
```
cd /d <program>
make upload_all
make upload FILE:=http/lights.lua
make upload FILE:=init-gpio.lua
```

3. Test it in the ESPlorer.
