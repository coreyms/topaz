---------------------------------------------------------------------------------------------------
-- func: addallrunicportals
-- desc: Adds all runic portals to a player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
}

function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!addallrunicportals {player}")
end

function onTrigger(player, target)
    -- validate target
    local targ
    if (target == nil) then
        targ = player
    else
        targ = GetPlayerByName(target)
        if (targ == nil) then
            error(player, string.format("Player named '%s' not found!", target))
            return
        end
    end

    local travelType = tpz.teleport.type.HOMEPOINT
	local index = 0
	local hpBit  = 0
    local hpSet  = 0
	
	while(index < 122) do
		hpBit  = index % 32
		hpSet  = math.floor(index / 32)
		
		if not targ:hasTeleport(travelType, hpBit, hpSet) then
			if(index ~= 67) then
				targ:addTeleport(travelType, hpBit, hpSet)
			end
		end
		
		index = index + 1
	end
	
	player:PrintToPlayer("Added all homepoints to player.")
	
end
