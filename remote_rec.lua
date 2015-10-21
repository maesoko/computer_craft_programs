modem = peripheral.wrap("left")

if not modem.isOpen(555) then
  modem.open(555)
end

while true do
  event, side, recPort, senderPort, message, senderDistance = os.pullEvent("modem_message")
   
  if message == 'w' then
     turtle.forward()
   elseif message == 's' then
     turtle.back()
   elseif message == 'a' then
      turtle.turnLeft()
   elseif message == 'd' then
     turtle.turnRight()
   elseif message == 'leftCtrl' then
     turtle.down()
   elseif message == 'space' then
     turtle.up()
   elseif message == 'rightShift' then
     turtle.dance()
  end
    
   sleep(0)
end
