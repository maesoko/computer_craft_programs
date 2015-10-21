modem = peripheral.wrap("left")

if not modem.isOpen(4545) then
  modem.open(4545)
end

local event, recPort, senderPort, message, senderDistance = 
  os.pullEvent('modem_message')


print(message)
