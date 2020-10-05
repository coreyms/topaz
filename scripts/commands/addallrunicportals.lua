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

    tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.AZOUPH)
	tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.DVUCCA)
	tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.MAMOOL)
	tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.HALVUNG)
	tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.ILRUSI)
	tpz.besieged.addRunicPortal(targ, tpz.teleport.runic_portal.NYZUL)
	
	player:PrintToPlayer("Added all runic portals to player.")
	
end
