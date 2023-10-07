if Config.Framework == 'QBCore' then
    local QBCore = exports['qb-core']:GetCoreObject()

    RegisterServerEvent("Lxr_dispatch:Server:SendAlert")
    AddEventHandler("Lxr_dispatch:Server:SendAlert", function(aljob, text, coords, id)
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(v)

            if Player.PlayerData.job.name == aljob and Player.PlayerData.job.onduty then
                TriggerClientEvent("Lxr_dispatch:Client:SendAlert", v, text, coords, id)
            end
        end
    end)

    print('Script By Lxr Dev discord.gg/R9KgyCkXJp')

    RegisterServerEvent("Lxr_dispatch:Server:SendVehRob")
    AddEventHandler("Lxr_dispatch:Server:SendVehRob", function(aljob, coords, model, color, id)
        for k, v in pairs(QBCore.Functions.GetPlayers()) do
            local Player = QBCore.Functions.GetPlayer(v)

            if Player.PlayerData.job.name == aljob and Player.PlayerData.job.onduty then
                TriggerClientEvent("Lxr_dispatch:Client:SendVehRob", v, coords, model, color, id)
            end
        end
    end)
end