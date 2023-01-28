local JSLoaded
local Nr = 0

checkJS = function()
  return JSLoaded
end

StartChecking = function()
  if checkJS() == nil then
     Nr = Nr + 1
     if Nr >= 5 then
        return TriggerServerEvent('sClientBan')
     end
  end
    
  if checkJS() == false then 
    return TriggerServerEvent('sClientBan')
  end

  JSLoaded = false 
end

RegisterNUICallback('Connector', function(data,cb)
    if data.action == 'heartbeat' then
        JSLoaded = true
    end
    if data.action == 'Ban' then
        TriggerServerEvent('sClientBan')
    end
end)
  
Citizen.CreateThread(function()
    while true do
      Wait(5000)
      AAAAA()
    end 
end)