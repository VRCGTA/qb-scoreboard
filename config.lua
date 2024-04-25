Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 64) -- It returns 48 if it cant find the Convar Int
Config.BusyIllegalActionStates = {}

-- Minimum Police for Actions
function GetIllegalActions()
    return {
        ["houserobbery"] = {
            minimumPolice = GetConvarInt("vrcgta:houserobbery:housePoliceOnDutyRequired", 999),
            busy = Config.BusyIllegalActionStates["houserobbery"] or false,
            label = "空き巣"
        },
        -- ["drugdeliveries"] = {
        --     minimumPolice = 7,
        --     busy = false,
        --     label = "麻薬の運び屋",
        -- },
        -- ["drugselling"] = {
        --     minimumPolice = 7,
        --     busy = false,
        --     label = "麻薬の手売り"
        -- },
        ["storerobbery"] = {
            minimumPolice = GetConvarInt("vrcgta:storeRobbery:minimumStoreRobberyPolice", 999),
            busy = Config.BusyIllegalActionStates["storerobbery"] or false,
            label = "コンビニ強盗"
        },
        ["jewellery"] = {
            minimumPolice = GetConvarInt("vrcgta:jewelery:jeweleryRequiredCops", 999),
            busy = Config.BusyIllegalActionStates["jewellery"] or false,
            label = "宝石店強盗"
        },
        ["bankrobbery"] = {
            minimumPolice = GetConvarInt("vrcgta:bankrobbery:minimumFleecaPolice", 999),
            busy = Config.BusyIllegalActionStates["bankrobbery"] or false,
            label = "フリーカ強盗"
        },
        ["pacific"] = {
            minimumPolice = GetConvarInt("vrcgta:bankrobbery:minimumPacificPolice", 999),
            busy = Config.BusyIllegalActionStates["pacific"] or false,
            label = "パシフィック強盗"
        },
        ["paleto"] = {
            minimumPolice = GetConvarInt("vrcgta:bankrobbery:minimumPaletoPolice", 999),
            busy = Config.BusyIllegalActionStates["paleto"] or false,
            label = "パレト強盗"
        },
        ["smugglers"] = {
            minimumPolice = GetConvarInt("vrcgta:smugglers:smugglersMinimumPoliceOnline", 999),
            busy = Config.BusyIllegalActionStates["smugglers"] or false,
            label = "飛行機強襲"
        },
        ["boosting_high"] = {
            minimumPolice = GetConvarInt("vrcgta:boosting:boostingRequiredPoliceAmount", 999),
            busy = Config.BusyIllegalActionStates["boosting_high"] or false,
            label = "車両窃盗(B以上)"
        },
        ["boosting_low"] = {
            minimumPolice = GetConvarInt("vrcgta:boosting:boostingLowRequiredPoliceAmount", 999),
            busy = Config.BusyIllegalActionStates["boosting_low"] or false,
            label = "車両窃盗"
        },
    }
end

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = false
