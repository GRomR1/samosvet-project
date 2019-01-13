return function (connection, req, args)
   dofile("httpserver-header.lc")(connection, 200, 'html')
   data = '<!DOCTYPE html><html><head><meta charset="utf-8"></head><body>'
      data = data..'<ul>'
      if args.color == "red" then
        if args.state == "1" then
            print("SWITCH ON RED "..red_pin)
            gpio.write(red_pin, gpio.LOW)
            gpio.write(yellow_pin, gpio.HIGH)
            gpio.write(green_pin, gpio.HIGH)
            gpio.write(allow_pin, gpio.LOW)
        else
            print("SWITCH OFF RED "..red_pin)
            gpio.write(red_pin, gpio.HIGH)
        end
      end
      if args.color == "yellow" then
        if args.state == "1" then
            print("SWITCH ON YELLLOW "..yellow_pin)
            gpio.write(red_pin, gpio.HIGH)
            gpio.write(yellow_pin, gpio.LOW)
            gpio.write(green_pin, gpio.HIGH)
            gpio.write(allow_pin, gpio.HIGH)
        else
            print("SWITCH OFF YELLLOW "..yellow_pin)
            gpio.write(yellow_pin, gpio.HIGH)
        end
      end
      if args.color == "green" then
        if args.state == "1" then
            print("SWITCH ON GREEN "..green_pin)
            gpio.write(red_pin, gpio.HIGH)
            gpio.write(yellow_pin, gpio.HIGH)
            gpio.write(green_pin, gpio.LOW)
            gpio.write(allow_pin, gpio.LOW)
        else
            print("SWITCH OFF GREEN "..green_pin)
            gpio.write(green_pin, gpio.HIGH)
        end
      end
      for name, value in pairs(args) do
         data = data..'<li><b>' .. name .. ':</b> ' .. tostring(value) .. '<br></li>\n'
--         connection:send('<li><b>' .. name .. ':</b> ' .. tostring(value) .. "<br></li>\n")
      end
      data = data..'</ul>\n'
--      connection:send("</ul>\n")
--   end
   data = data.."</body></html>"
   connection:send(data)
--   connection:send("</body></html>")
end
