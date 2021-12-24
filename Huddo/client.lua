-- NS100#0001

local health = (GetEntityHealth(PlayerPedId()) - 100)
local armor = GetPedArmour(PlayerPedId())

Citizen.CreateThread(function()
    while true do
        Wait(250)
        SendNUIMessage({
            action = 'UpdateStatNS100', 
            show = true,
            health = health,
            armour = armor,
        })
    end
end)










RegisterCommand('a', function(source, args, rawCommand)

        AddArmourToPed(GetPlayerPed(-1), 200)


end)