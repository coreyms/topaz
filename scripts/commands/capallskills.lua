---------------------------------------------------------------------------------------------------
-- func: capallskills
-- desc: Caps all the players skills.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "s"
}

function onTrigger(player, target)

	if (target == nil) then
        player:PrintToPlayer( "You must enter a valid player name." );
		player:PrintToPlayer( "!capallskills <player>" );
		return;
    end

	local targ = GetPlayerByName( target );

	if (targ ~= nil) then
		targ:capAllSkills()
		player:PrintToPlayer( 'All skills capped!' )
	else
		player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) )
	end
end
