---------------------------------------------------------------------------------------------------
-- func: givespitem2 <player> <item name>
-- desc: Gives a special item to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "ss"
}

function onTrigger(player, target, itemName)

	if(target == nil) then
		player:PrintToPlayer("You must enter a valid player name and item name.")
		player:PrintToPlayer("!givespitem2 <player> <item name>")
		player:PrintToPlayer("For list of items, do: !givespitem2 list")
		return
	end

    if (itemName == nil) then
		if (target == "list") then
			player:PrintToPlayer("pythiasash1, rosestrap, zahaksmail, celadonyggrete, zaffreyggrete, staticearring, magneticearring, hollowearring, etherealearring,")
			player:PrintToPlayer("amemetmantle1, heraldsgaiters, striderboots, snowring, marssring, shadowring, karkaring, zilantring, galdrring, veelaring, corneusring,")
			player:PrintToPlayer("blobnagring, strigoiring, succorring, uggalepihpendant, moldaviteearring, mahatmacape, rainbowcape, cerberusmantle1, pixieearring,")
			player:PrintToPlayer("cuchulainsbelt, cuchulainsmantle, witchsash, peacockcharm, aristocratscoat, prismcape, beaknecklace1, celestialring, celestialearring,")
			player:PrintToPlayer("raptureearring, antivenomearring, fumasune-ate, aceshelm, opticalhat, legionscutum, astralearring, walahraturban, ninurtassash")
		else
			player:PrintToPlayer("You must enter a valid player name and item name.")
			player:PrintToPlayer("!givespitem2 <player> <item name>")
			player:PrintToPlayer("For list of items, do: !givespitem2 list")
        end
		return
    end

    local targ = GetPlayerByName( target )
    if (targ == nil) then
        player:PrintToPlayer( string.format( "Player named '%s' not found!", target ) )
        return
    end
	
	local setGiven = true;
	
    if (targ:getFreeSlotsCount() == 0) then
        player:PrintToPlayer( string.format( "Player '%s' does not have free space for those items!", target ) )
    else
		if (itemName == "pythiasash1") then
			 targ:addItem(15950)
		elseif (itemName == "rosestrap") then
			 targ:addItem(19041)
		elseif (itemName == "zahaksmail") then
			 targ:addItem(11288)
		elseif (itemName == "celadonyggrete") then
			 targ:addItem(3960)
		elseif (itemName == "zaffreyggrete") then
			 targ:addItem(3961)
		elseif (itemName == "staticearring") then
			 targ:addItem(15962)
		elseif (itemName == "magneticearring") then
			 targ:addItem(15963)
		elseif (itemName == "hollowearring") then
			 targ:addItem(15964)
		elseif (itemName == "etherealearring") then
			 targ:addItem(15965)
		elseif (itemName == "amemetmantle1") then
			 targ:addItem(13646)
		elseif (itemName == "heraldsgaiters") then
			 targ:addItem(15322)
		elseif (itemName == "striderboots") then
			 targ:addItem(14080)
		elseif (itemName == "snowring") then
			 targ:addItem(14640)
		elseif (itemName == "marssring") then
			 targ:addItem(15548)
		elseif (itemName == "shadowring") then
			 targ:addItem(14646)
		elseif (itemName == "karkaring") then
			 targ:addItem(11632)
		elseif (itemName == "zilantring") then
			 targ:addItem(11629)
		elseif (itemName == "galdrring") then
			 targ:addItem(11633)
		elseif (itemName == "veelaring") then
			 targ:addItem(11634)
		elseif (itemName == "corneusring") then
			 targ:addItem(11630)
		elseif (itemName == "blobnagring") then
			 targ:addItem(11631)
		elseif (itemName == "strigoiring") then
			 targ:addItem(11628)
		elseif (itemName == "succorring") then
			 targ:addItem(15859)
		elseif (itemName == "uggalepihpendant") then
			 targ:addItem(13145)
		elseif (itemName == "moldaviteearring") then
			 targ:addItem(14724)
		elseif (itemName == "mahatmacape") then
			 targ:addItem(13657)
		elseif (itemName == "rainbowcape") then
			 targ:addItem(13587)
		elseif (itemName == "cerberusmantle1") then
			 targ:addItem(16216)
		elseif (itemName == "pixieearring") then
			 targ:addItem(13415)
		elseif (itemName == "cuchulainsbelt") then
			 targ:addItem(15917)
		elseif (itemName == "cuchulainsmantle") then
			 targ:addItem(16241)
		elseif (itemName == "witchsash") then
			 targ:addItem(15918)
		elseif (itemName == "peacockcharm") then
			 targ:addItem(13056)
		elseif (itemName == "aristocratscoat") then
			 targ:addItem(13774)
		elseif (itemName == "prismcape") then
			 targ:addItem(13627)
		elseif (itemName == "beaknecklace1") then
			 targ:addItem(16264)
		elseif (itemName == "celestialring") then
			 targ:addItem(15809)
		elseif (itemName == "celestialearring") then
			 targ:addItem(15992)
		elseif (itemName == "raptureearring") then
			 targ:addItem(15978)
		elseif (itemName == "antivenomearring") then
			 targ:addItem(15971)
		elseif (itemName == "fumasune-ate") then
			 targ:addItem(15327)
		elseif (itemName == "aceshelm") then
			 targ:addItem(15223)
		elseif (itemName == "opticalhat") then
			 targ:addItem(13915)
		elseif (itemName == "legionscutum") then
			 targ:addItem(16177)
		elseif (itemName == "astralearring") then
			 targ:addItem(14782)
		elseif (itemName == "walahraturban") then
			 targ:addItem(15270)
		elseif (itemName == "ninurtassash") then
			 targ:addItem(15458)
		else
			setGiven = false;
		end
		if(setGiven) then
			player:PrintToPlayer( string.format( "Gave player '%s' the item '%s' ", target, itemName ) )
		else
			player:PrintToPlayer("You must specify a valid item name, !givespitem2 list")
		end
    end
end
