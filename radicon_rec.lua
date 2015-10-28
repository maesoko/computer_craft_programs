-- ### parameter
local modem = peripheral.wrap("right")
local port = 893

-- ### modem setup
if not modem.isOpen(port) then
 modem.open(port)
end


-- ### functions
function handleMessage(message)
  if message == "up" then
    turtle.up()
  elseif message == "down" then
    turtle.down()
  elseif message == "turnLeft" then
    turtle.turnLeft()
  elseif message == "turnRight" then
    turtle.turnRight()
  elseif message == "forward" then
    turtle.forward()
  elseif message == "back" then
    turtle.back()
  end
  
end

-- ### main
while true do
  
  event, side, recPort, senderPort, message, senderDistance = os.pullEvent('modem_message')
  
  handleMessage(message)
  
  sleep(0)
end