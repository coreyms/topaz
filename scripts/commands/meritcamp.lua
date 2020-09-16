---------------------------------------------------------------------------------------------------
-- func: @meritcamp <camp>
-- auth: Sonicblazer
-- desc: Consolidate Hcamp warp
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};


function onTrigger(player, camp)

	if (player:getCharVar( 'inJail' ) == 0) then		
		if (camp == "puks") then
			player:setPos( -136, -14, -662, 205, 52 );
		elseif (camp == "birds") then
			player:setPos( -461, -19, -18, 74, 52 );
		elseif (camp == "imps") then
			player:setPos( 540, -18, -407, 186, 79 );
		elseif (camp == "puddings") then
			player:setPos( 179, -27, 127, 189, 61 );
		end
	else
		player:PrintToPlayer( string.format( "You've been a bad, bad person. You are staying here for a while, kupo!", target ) );
	end		
end;