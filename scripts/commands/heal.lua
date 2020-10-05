---------------------------------------------------------------------------------------------------
-- func: heal <player>
-- desc: Sets the GM or target players health and magic points to full
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 1,
    parameters = "s"
}

function error(player, msg)
    player:PrintToPlayer(msg)
    player:PrintToPlayer("!heal {player}")
end

function onTrigger(player, target)
    -- validate target
    local targ
    local cursor_target = player:getCursorTarget()

    if target then
        targ = GetPlayerByName(target)
        if not targ then
            error(player, string.format( "Player named '%s' not found!", target ) )
            return
        end
    elseif cursor_target and not cursor_target:isNPC() then
        targ = cursor_target
    else
        targ = player
    end

    -- set hp and mp to full
    if targ:isAlive() then
		local maxHP = targ:getMaxHP()
		local maxMP = targ:getMaxMP()
        targ:setHP(maxHP)
		targ:setMP(maxMP)
        if targ:getID() ~= player:getID() then
            player:PrintToPlayer(string.format("Set %s's HP to %i and MP to %i", targ:getName(), targ:getHP(), targ:getMP()))
        end
    else
        player:PrintToPlayer(string.format("%s is currently dead.", targ:getName()))
    end
end
