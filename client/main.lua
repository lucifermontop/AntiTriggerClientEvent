for _, event in ipairs(Config.events) do
    RegisterNetEvent(event)
    AddEventHandler(event, function()
        local res = GetInvokingResource()
        TriggerServerEvent("antitrigger:detect", res, event)
    end)
end