---------------------------------------------------------------------------------------------------
-- func: warp
-- desc: Sends player to their homepoint.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

function onTrigger(player)

	if (player:getCharVar( 'inJail' ) == 0) then
		player:warp();
	else
		player:PrintToPlayer( string.format( "You've been a bad, bad person. You are staying here for a while, kupo!", target ) );
	end
end