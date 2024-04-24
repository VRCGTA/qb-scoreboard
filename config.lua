Config = Config or {}

-- Open scoreboard key
Config.OpenKey = 'HOME' -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/

Config.Toggle = true -- If this is false the scoreboard stays open only when you hold the OpenKey button, if this is true the scoreboard will be openned and closed with the OpenKey button

-- Max Server Players
Config.MaxPlayers = GetConvarInt('sv_maxclients', 64) -- It returns 48 if it cant find the Convar Int

-- Minimum Police for Actions
Config.IllegalActions = {
    ["houserobbery"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('HousePoliceOnDutyRequired'),
        busy = false,
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
        minimumPolice = exports['vrcgta-qb']:GetValue('MinimumStoreRobberyPolice'),
        busy = false,
        label = "コンビニ強盗"
    },
    ["jewellery"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('JewelleryRequiredCops'),
        busy = false,
        label = "宝石店強盗"
    },
    ["bankrobbery"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('MinimumFleecaPolice'),
        busy = false,
        label = "フリーカ強盗"
    },
    ["pacific"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('MinimumPacificPolice'),
        busy = false,
        label = "パシフィック強盗"
    },
    ["paleto"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('MinimumPaletoPolice'),
        busy = false,
        label = "パレト強盗"
    },
    ["smugglers"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('SmugglersMinimumPoliceOnline'),
        busy = false,
        label = "飛行機強襲"
    },
    ["boosting_high"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('BoostingRequiredPoliceAmount'),
        busy = false,
        label = "車両窃盗(B以上)"
    },
    ["boosting_low"] = {
        minimumPolice = exports['vrcgta-qb']:GetValue('BoostingLowRequiredPoliceAmount'),
        busy = false,
        label = "車両窃盗"
    },
}

-- Show ID's for all players or Opted in Staff
Config.ShowIDforALL = false
