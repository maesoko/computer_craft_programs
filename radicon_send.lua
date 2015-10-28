os.loadAPI("h2touchpanel")

-- ### parameter
local mon = peripheral.wrap("top")
local row = 4
local column = 3
local modem = peripheral.wrap("right")
local port = 893

-- ### functions
function sendMessage(message)
  modem.transmit(port, port, message)
end

-- ### button_config_table
local bCfg = {}
bCfg[2] = {name="Up", cmd=function() sendMessage("up") end}
bCfg[4] = {name="Left", cmd=function() sendMessage("turnLeft") end}
bCfg[5] = {name="Front", cmd=function() sendMessage("forward") end}
bCfg[6] = {name="Right", cmd=function() sendMessage("turnRight") end}
bCfg[8] = {name="Back", cmd=function() sendMessage("back") end}
bCfg[4] = {name="Down", cmd=function() sendMessage("down") end}


-- ### main
local opt = {topPos=1, bottomPos=10}
local panel = h2touchpanel.makePanel(bCfg, column, row, mon, opt)

while true do
  local event, button = panel:pullButtonPushEvent()
  button:run()
  panel:drawPushedButtonEffect(button, 0.5)
  
  sleep(0)
  
end