RegisterCommand('dice', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	local dices, c = tonumber(args[1]), 1
	if dices then
		if dices > 3 then
			TriggerClientEvent('notification', source, 'You can choose a number between 1 and 3 only', 2)
			return
		end
		local dice = {}
		while c <= dices do
			table.insert( dice, { dicenum = math.random(1, 6)})
			c = c + 1
		end
		TriggerClientEvent('rt-smallresources:ToggleDiceAnim', source)
		Citizen.Wait(2000)
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, dice, "dices")
	end
end, false)

RegisterCommand('rps', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	TriggerClientEvent('rt-smallresources:ToggleDiceAnim', source)
	Citizen.Wait(2000)
	anim = tonumber(args[1])
	if not anim then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, math.random(1, 3), "rps")
	elseif anim == 1 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source,1, "rps")
	elseif anim == 2 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, 3, "rps")
	elseif anim == 3 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, 2, "rps")
	end

end, false)

RegisterCommand('shoot', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	TriggerClientEvent('rt-smallresources:ToggleDiceAnim', source)
	Citizen.Wait(2000)
	anim = tonumber(args[1])
	if not anim then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, math.random(1, 2), "shoot")
	elseif anim == 1 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source,1, "shoot")
	elseif anim == 2 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source,2, "shoot")
	end

end, false)

RegisterCommand('coinflip', function(source, args, rawCommand)
	if source == 0 or source == "Console" then return end

	TriggerClientEvent('rt-smallresources:ToggleDiceAnim', source)
	Citizen.Wait(2000)
	anim = tonumber(args[1])
	if not anim then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source, math.random(1, 2), "coinflip")
	elseif anim == 1 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source,1, "coinflip")
	elseif anim == 2 then
		TriggerClientEvent('rt-smallresources:ToggleDisplay', -1, source,2, "coinflip")
	end

end, false)
