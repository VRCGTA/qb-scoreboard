Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 64) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["houcerobbery"] = {
        minimumPolice = 2,
        busy = false,
        label = "空き巣"
    },
    ["drugdeliveries"] = {
        minimumPolice = 3,
        busy = false,
        label = "麻薬の運び屋",
    },
    ["drugselling"] = {
        minimumPolice = 4,
        busy = false,
        label = "麻薬の手売り"
    },
    ["storerobbery"] = {
        minimumPolice = 5,
        busy = false,
        label = "コンビニ強盗"
    },
    ["jewelery"] = {
        minimumPolice = 6,
        busy = false,
        label = "宝石強盗"
    },
    ["bank"] = {
        minimumPolice = 6,
        busy = false,
        label = "銀行強盗"
    }
}

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = false
