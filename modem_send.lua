modem = peripheral.wrap("right")

if not modem.isOpen(4545) then
 modem.open(4545)
end

print("message:")
modem.transmit(4545,4545, read())
