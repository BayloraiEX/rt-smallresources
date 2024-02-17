local diceDisplaying = {}
local displayTime = 6500

Citizen.CreateThread(function()
    local strin = ""

	while true do
		local currentTime, html = GetGameTimer(), ""
		for k, v in pairs(diceDisplaying) do
            
			local player = GetPlayerFromServerId(k)
			if NetworkIsPlayerActive(player) then
			    local sourcePed, targetPed = GetPlayerPed(player), PlayerPedId()
        	    local sourceCoords, targetCoords = GetEntityCoords(sourcePed), GetEntityCoords(targetPed)
        	    local pedCoords = GetPedBoneCoords(sourcePed, 0x2e28, 0.0, 0.0, 0.0)
    
                if player == source or #(sourceCoords - targetCoords) < 10 then
                    local onScreen, xxx, yyy = GetHudScreenPositionFromWorldPosition(pedCoords.x, pedCoords.y, pedCoords.z + 1.2)
                    if not onScreen then
                        if v.type == "dices" then
                            if #v.num > 1 then
                                if #v.num == 2 then
                                    html = html .. "<span style=\"position: absolute; padding-left: 150px; left: ".. xxx * 72 .."%;top: ".. yyy * 100 .."%;\">"
                                elseif #v.num == 3 then
                                    html = html .. "<span style=\"position: absolute; padding-left: 150px; left: ".. xxx * 66 .."%;top: ".. yyy * 100 .."%;\">"
                                end
                                for a, b in pairs(v.num) do
                                    html = html .. "<img \" width=\"75px\" height=\"75px\" src=\"minigames/dice_".. b.dicenum ..".png\">"
                                end
                            else
                                html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                                html = html .. "<img \" width=\"75px\" height=\"75px\" src=\"minigames/dice_".. v.num[1].dicenum ..".png\">"    
                            end
                            html = html .. "</img></span>"
                        elseif v.type == "rps" then
                            html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                            html = html .. "<img \" width=\"75px\" height=\"75px\" src=\"minigames/option_".. v.num ..".png\">"    
                            html = html .. "</img></span>"
                        elseif v.type == "shoot" then
                            html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                            html = html .. "<img \" width=\"75px\" height=\"75px\" src=\"minigames/shoot_".. v.num ..".png\">"    
                            html = html .. "</img></span>"
                        elseif v.type == "coinflip" then
                            html = html .. "<span style=\"position: absolute; left: ".. xxx * 94 .."%;top: ".. yyy * 100 .."%;\">"
                            html = html .. "<img \" width=\"75px\" height=\"75px\" src=\"minigames/coinflip_".. v.num ..".png\">"    
                            html = html .. "</img></span>"
                        end
                    end
                end
        	end
        	if v.time <= currentTime then
        		diceDisplaying[k] = nil
        	end
        end

        if strin ~= html then
            SendNUIMessage({
                type = true,
                html = html
            })
            strin = html
        end
        
		Wait(0)
    end
end)

RegisterNetEvent("rt-smallresources:ToggleDisplay")
AddEventHandler("rt-smallresources:ToggleDisplay", function(playerId, number, typ)
	diceDisplaying[tonumber(playerId)] = {num = number, time = GetGameTimer() + displayTime, type = typ}
end)

RegisterNetEvent("rt-smallresources:ToggleDiceAnim")
AddEventHandler("rt-smallresources:ToggleDiceAnim", function()
    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1500)
    TriggerServerEvent('InteractSound_SV:PlayWithinDistance', 2.0, 'dice', 0.3)
    Citizen.Wait(1500)
    ClearPedTasks(GetPlayerPed(-1))
end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end

Citizen.CreateThread(function()
    TriggerEvent('chat:addSuggestion', '/dice', 'Roll the dice', {
        { name="amount", help="How many dice to roll, 1-3" }
    })
    TriggerEvent('chat:addSuggestion', '/coinflip', 'Heads or Tails')
    TriggerEvent('chat:addSuggestion', '/shoot', 'Odds and Evens')
    TriggerEvent('chat:addSuggestion', '/rps', 'Rock, Paper, Scissors') 
end)
