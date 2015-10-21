modem = peripheral.wrap("back")

while true do
  event, key_code = os.pullEvent("key")

  modem.transmit(555, 555, keys.getName(key_code))
end
