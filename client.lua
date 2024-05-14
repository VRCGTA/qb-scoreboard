local QBCore = exports['qb-core']:GetCoreObject()
local scoreboardOpen = false

-- Functions

-- Events

RegisterNetEvent('qb-scoreboard:client:SetActivityBusy', function(activity, busy)
    GetIllegalActions()[activity].busy = busy
end)

-- Command

if Config.Toggle then
    RegisterCommand('scoreboard', function()
        if not scoreboardOpen then
            QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetScoreboardData', function(players, cops, playerList)
                playerOptin = playerList

                SendNUIMessage({
                    action = "open",
                    players = players,
                    maxPlayers = Config.MaxPlayers,
                    requiredCops = GetIllegalActions(),
                    currentCops = cops
                })

                scoreboardOpen = true
            end)
        else
            SendNUIMessage({
                action = "close",
            })

            scoreboardOpen = false
        end
    end, false)

    RegisterKeyMapping('scoreboard', 'Open Scoreboard', 'keyboard', Config.OpenKey)
else
    RegisterCommand('+scoreboard', function()
        if scoreboardOpen then return end
        QBCore.Functions.TriggerCallback('qb-scoreboard:server:GetScoreboardData', function(players, cops, playerList)
            playerOptin = playerList

            SendNUIMessage({
                action = "open",
                players = players,
                maxPlayers = Config.MaxPlayers,
                requiredCops = GetIllegalActions(),
                currentCops = cops
            })

            scoreboardOpen = true
        end)
    end, false)

    RegisterCommand('-scoreboard', function()
        if not scoreboardOpen then return end
        SendNUIMessage({
            action = "close",
        })

        scoreboardOpen = false
    end, false)

    RegisterKeyMapping('+scoreboard', 'Open Scoreboard', 'keyboard', Config.OpenKey)
end

-- Threads

CreateThread(function()
    Wait(1000)
    local actions = {}
    for k, v in pairs(GetIllegalActions()) do
        actions[k] = v.label
    end
    SendNUIMessage({
        action = "setup",
        items = actions
    })
end)
