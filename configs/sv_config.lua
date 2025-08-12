SVConfig = {
    detect = function(playerId, event)
        print("[^4TRIGGER DETECTION^0] Player ID: " .. playerId .. " (" .. GetPlayerName(playerId) .. ") tried to trigger a client event. (" .. event .. ")")
        -- Implement your detection logic here
    end,
}