local dtctdRes = {}
for idx = 0, GetNumResources() - 1 do
    local name = GetResourceByFindIndex(idx)
    if name and GetResourceState(name) == "started" then
        dtctdRes[name] = true
    end
end

RegisterNetEvent("antitrigger:detect")
AddEventHandler("antitrigger:detect", function(rsc, event)
    if not dtctdRes[rsc] then
        SVConfig.detect(source, event)
    end
end)