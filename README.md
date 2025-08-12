# AntiTriggerClientEvent

A FiveM resource to detect and prevent unauthorized triggering of client events from unknown or suspicious sources like lua executors.

## Features
- Monitors and registers specified client events
- Detects attempts to trigger protected events from untrusted resources
- Notifies the server and can take custom actions (e.g., logging, kicking, banning)
- Easy configuration for both client and server

## Installation
1. Clone or download this repository into your `resources` folder.
2. Add `ensure AntiTriggerClientEvent` to your `server.cfg`.

## Configuration
- Edit `configs/cl_config.lua` to specify which client events should be protected.
- Edit `configs/sv_config.lua` to customize server-side detection actions.

## Usage
### Client Side
The client script automatically registers and monitors the configured events. If an event is triggered from an unknown resource, it sends a notification to the server.

### Server Side
The server script receives notifications and can execute custom logic (e.g., logging, kicking, banning) when suspicious activity is detected.

## Example
```lua
-- cl_config.lua
Config = {
    events = {
        "esx:removeAccountMoney",
        -- Add more events here
    }
}
```

```lua
-- sv_config.lua
SVConfig = {
    detect = function(playerId, event)
        print("[^4TRIGGER DETECTION^0] Player ID: " .. playerId .. " (" .. GetPlayerName(playerId) .. ") tried to trigger a client event. (" .. event .. ")")
        -- Implement your detection logic here
    end,
}
```

## File Structure
```
AntiTriggerClientEvent/
├── fxmanifest.lua
├── README.md
├── client/
│   └── main.lua
├── configs/
│   ├── cl_config.lua
│   └── sv_config.lua
└── server/
    └── main.lua
```

## Contributing
Pull requests and suggestions are welcome! Please open an issue for major changes.

## License
This project is licensed under the MIT License.