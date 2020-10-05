---------------------------------------------------------------------------------------------------
-- func: @xpcamp
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player, zoneId)
    local word  = "";
    local i     = 0;
    local zone  = zoneId;
	
    if (zoneId == nil) then
        player:PrintToPlayer("You must enter a zone id.");
        return;
    end
	
	if (player:getCharVar( 'inJail' ) == 0) then
	-- Dunes    
		if (zoneId == 10) then
				player:setPos( 144, -7, 110, 53, 103 );
				player:PrintToPlayer("Do page 1, then move to page 3 at Oasis");
			return;
		end	
		
	-- maze of shakrami    
		if (zoneId == 14) then
				player:setPos( -338, -11, -170, 192, 198 );
				player:PrintToPlayer("Camp here level 14-25~");
			return;
		end	
		
	-- Quifim island 
		if (zoneId == 24) then
				player:setPos( 202, -21, -20, 128, 126 );
				player:PrintToPlayer("Start with page 3");
			return;
		end

	-- Yuhtunga Jungle
		if (zoneId == 26) then
				player:setPos( -238, 0, 511, 57, 123 );
			return;
		end
	-- Yhoator Jungle    
		if (zoneId == 28) then
				player:setPos( -277, 8, 141, 11, 124 );
			return;
		end	
		
	-- Eastern Altep Desert
		if (zoneId == 32) then
				player:setPos( -255, 8, -253, 56, 114 );
				player:PrintToPlayer("Kill Dhamels near zone");
			return;
		end

	-- Crawler's Nest
		if (zoneId == 36) then
				player:setPos( 380, -32, 4, 59, 197 );
				player:PrintToPlayer("Start with page 1");
			return;
		end	
	-- east ronfare S colbri camp
		--if (zoneId == 37) then
				--player:setPos( 519, -20, -203, 123, 81 );
				--player:PrintToPlayer("no pages just kill cobri's");
			--return;
		--end	
	-- Rolanberry Fields    
		if (zoneId == 41) then
				player:setPos( 203, 24, 486, 64, 110 );
				player:PrintToPlayer("Page 5 and make your way to G-11 > H-12 area");
			return;
		end	
		
	-- Garlaige Citadel dont have pos
		if (zoneId == 40) then
				player:setPos( -380, -6, 365, 63, 200 );
			return;
		end

	-- Gustav Tunnel
		if (zoneId == 42) then
				player:setPos( -61, -10, -129, 27, 212 );
			return;
		end	
	-- Eastern Altepa     
		if (zoneId == 48) then
				player:setPos( -255, 8, -253, 56, 114 );
				player:PrintToPlayer("Page 5");
			return;
		end	

	-- The Boyoda Tree     
		if (zoneId == 50) then
				player:setPos( 74.224, 8.785, 142.738, 293, 153 );
				player:PrintToPlayer("Check pages for spiders");
				player:PrintToPlayer("You can skill up on crabs,almost to cap");
				player:PrintToPlayer("You can also get to Fafni/Nid");
			return;
		end	
		
	-- western altepa
		if (zoneId == 52) then
				player:setPos( 418, -3, 16, 245, 125 );
				player:PrintToPlayer("Page 3, camp is located in the H-8 > H-7 area");
			return;
		end

	-- Wajaom Woodlands
		if (zoneId == 54) then
				player:setPos( -244, -15, 86, 249, 51 );
				player:PrintToPlayer("No Page, Camp near G-8");
			return;
		end	
		
	-- Ro'Maeve
		if (zoneId == 60) then
				player:setPos( 7, -8, -141, 198, 122 );
				player:PrintToPlayer("page 1 (yielding 2600 EXP p/page), and you run the entire map in a circle");
			return;
		end

	-- Cape Teriggan
		if (zoneId == 62) then
				player:setPos( -185, 7, -67, 221, 113 );
				player:PrintToPlayer("solo/party or skill up");
			return;
		end	
		
	-- Kuftal Tunnel
		if (zoneId == 64) then
				player:setPos( 36, -10, 261, 23, 174 );
				player:PrintToPlayer("page 1, near J-9");
			return;
		end

	-- Ifrit's Cauldron
		if (zoneId == 66) then
				player:setPos( -16, 3, -258, 147, 205 );
				player:PrintToPlayer("Page 2, 60-75 also good for merits");
			return;
		end		
		
	-- Ranguemont pass
		if (zoneId == 68) then
				player:setPos( 282, -66, 261, 127, 166 );
				player:PrintToPlayer("Page 6, Near Beaucidine Glacier zone");
			return;
		end			
	else
		player:PrintToPlayer( string.format( "You've been a bad, bad person. You are staying here for a while, kupo!", target ) );
	end
end