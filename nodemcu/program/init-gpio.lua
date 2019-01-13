-- init-gpio.lua
-- Initialization pin of the connected lights
-- Author: RG

red_pin = 1 -- input light RED
yellow_pin = 2 -- input light YELLOW
green_pin = 5 -- input light GREEN
allow_pin = 6 -- input allow to light bottom GREEN and RED
gpio.mode(red_pin, gpio.OUTPUT)
gpio.mode(yellow_pin, gpio.OUTPUT)
gpio.mode(green_pin, gpio.OUTPUT)
gpio.mode(allow_pin, gpio.OUTPUT)
gpio.write(red_pin, gpio.HIGH)
gpio.write(yellow_pin, gpio.HIGH)
gpio.write(green_pin, gpio.HIGH)
gpio.write(allow_pin, gpio.HIGH)
