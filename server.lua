local NDCore = exports['nd-core']:GetCoreObject()

NDCore.Functions.CreateUseableItem("nightvision", function(source)
    local player = NDCore.Functions.GetPlayer(source)
        if player ~= nil then 
           TriggerClientEvent("nd-nv:toggle", source)
        end 
end)
