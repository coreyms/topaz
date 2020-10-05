---------------------------------------------------------------------------------------------------
-- func: givespitem1 <player> <item name>
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
		player:PrintToPlayer("!givespitem1 <player> <item name>")
		player:PrintToPlayer("For list of items, do: !givespitem1 list")
		return
	end

    if (itemName == nil) then
		if (target == "list") then
			player:PrintToPlayer("temperancetorque, fortitudetorque, faithtorque, justicetorque, hopetorque, prudencetorque, lovetorque, novio, novia, relaxingearring, sanativeearring,")
			player:PrintToPlayer("fireobi, earthobi, waterobi, windobi, iceobi, thunderobi, lightobi, darkobi, flamegorget, soilgorget, aquagorget, breezegorget, snowgorget, thundergorget,")
			player:PrintToPlayer("lightgorget, shadowgorget, allobi, allgorget, phantasmalabj, foragersmantle, iretorque1, fylgjatorque1, aslancape,")
			player:PrintToPlayer("buccaneersbelt, deltaearring, iotaring, kubirabeads, morganaschoker, omegaring, rittergorget, toreadorsring, incubusearring1, gigantmantle, corsecape,")
			player:PrintToPlayer("tiresiascape, lemegetonmedallion1, ancienttorque, altdorfsearring, wilhelmsearring, setantasledelsens, spurrerberet, volunteersnails, silverfoxearring,")
			player:PrintToPlayer("hecatescape, zhagosbarbut, gnadbhodshelm, shrewdpumps, aesirearpendant, aesirmantle, aesirtorque, colossussearring,")
			player:PrintToPlayer("colossusstorque, marchingbelt, sangomalappa, avalonbreastplate, oilytrousers, antaresharness, roundelearring,")
		else
			player:PrintToPlayer("You must enter a valid player name and item name.")
			player:PrintToPlayer("!givespitem1 <player> <item name>")
			player:PrintToPlayer("For list of items, do: !givespitem1 list")
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
		if (itemName == "temperancetorque") then
			 targ:addItem(15513)
		elseif (itemName == "fortitudetorque") then
			 targ:addItem(15511)
		elseif (itemName == "faithtorque") then
			 targ:addItem(15512)
		elseif (itemName == "justicetorque") then
			 targ:addItem(15508)
		elseif (itemName == "hopetorque") then
			 targ:addItem(15509)
		elseif (itemName == "prudencetorque") then
			 targ:addItem(15510)
		elseif (itemName == "lovetorque") then
			 targ:addItem(15514)
		elseif (itemName == "novio") then
			 targ:addItem(14808)
		elseif (itemName == "novia") then
			 targ:addItem(14809)
		elseif (itemName == "relaxingearring") then
			 targ:addItem(14792)
		elseif (itemName == "sanativeearring") then
			 targ:addItem(14791)
		elseif (itemName == "fireobi") then
			 targ:addItem(15435)
		elseif (itemName == "earthobi") then
			 targ:addItem(15438)
		elseif (itemName == "waterobi") then
			 targ:addItem(15440)
		elseif (itemName == "windobi") then
			 targ:addItem(15437)
		elseif (itemName == "iceobi") then
			 targ:addItem(15436)
		elseif (itemName == "thunderobi") then
			 targ:addItem(15439)
		elseif (itemName == "lightobi") then
			 targ:addItem(15441)
		elseif (itemName == "darkobi") then
			 targ:addItem(15442)
		elseif (itemName == "flamegorget") then
			 targ:addItem(15495)
		elseif (itemName == "soilgorget") then
			 targ:addItem(15498)
		elseif (itemName == "aquagorget") then
			 targ:addItem(15500)
		elseif (itemName == "breezegorget") then
			 targ:addItem(15497)
		elseif (itemName == "snowgorget") then
			 targ:addItem(15496)
		elseif (itemName == "thundergorget") then
			 targ:addItem(15499)
		elseif (itemName == "lightgorget") then
			 targ:addItem(15501)
		elseif (itemName == "shadowgorget") then
			 targ:addItem(15502)
		elseif (itemName == "allobi") then
			 targ:addItem(28419)
		elseif (itemName == "allgorget") then
			 targ:addItem(27510)
		elseif (itemName == "phantasmalabj") then
			 targ:addItem(2432)
			 targ:addItem(2433)
		elseif (itemName == "foragersmantle") then
			 targ:addItem(13690)
		elseif (itemName == "iretorque1") then
			 targ:addItem(11582)
		elseif (itemName == "fylgjatorque1") then
			 targ:addItem(11580)
		elseif (itemName == "aslancape") then
			 targ:addItem(16228)
		elseif (itemName == "buccaneersbelt") then
			 targ:addItem(15911)
		elseif (itemName == "deltaearring") then
			 targ:addItem(15990)
		elseif (itemName == "iotaring") then
			 targ:addItem(15799)
		elseif (itemName == "kubirabeads") then
			 targ:addItem(16268)
		elseif (itemName == "morganaschoker") then
			 targ:addItem(16269)
		elseif (itemName == "omegaring") then
			 targ:addItem(15800)
		elseif (itemName == "rittergorget") then
			 targ:addItem(16267)
		elseif (itemName == "toreadorsring") then
			 targ:addItem(14674)
		elseif (itemName == "incubusearring1") then
			 targ:addItem(16053)
		elseif (itemName == "gigantmantle") then
			 targ:addItem(13648)
		elseif (itemName == "corsecape") then
			 targ:addItem(15464)
		elseif (itemName == "tiresiascape") then
			 targ:addItem(15464)
		elseif (itemName == "lemegetonmedallion1") then
			 targ:addItem(11584)
		elseif (itemName == "ancienttorque") then
			 targ:addItem(16275)
		elseif (itemName == "altdorfsearring") then
			 targ:addItem(16035)
		elseif (itemName == "wilhelmsearring") then
			 targ:addItem(16036)
		elseif (itemName == "setantasledelsens") then
			 targ:addItem(11410)
		elseif (itemName == "spurrerberet") then
			 targ:addItem(11497)
		elseif (itemName == "volunteersnails") then
			 targ:addItem(15710)
		elseif (itemName == "silverfoxearring") then
			 targ:addItem(15966)
		elseif (itemName == "hecatescape") then
			 targ:addItem(11543)
		elseif (itemName == "zhagosbarbut") then
			 targ:addItem(16159)
		elseif (itemName == "gnadbhodshelm") then
			 targ:addItem(16158)
		elseif (itemName == "shrewdpumps") then
			 targ:addItem(11411)
		elseif (itemName == "aesirearpendant") then
			 targ:addItem(16057)
		elseif (itemName == "aesirmantle") then
			 targ:addItem(11546)
		elseif (itemName == "aesirtorque") then
			 targ:addItem(11589)
		elseif (itemName == "colossussearring") then
			 targ:addItem(16058)
		elseif (itemName == "colossusstorque") then
			 targ:addItem(11590)
		elseif (itemName == "marchingbelt") then
			 targ:addItem(15953)
		elseif (itemName == "sangomalappa") then
			 targ:addItem(16319)
		elseif (itemName == "avalonbreastplate") then
			 targ:addItem(11286)
		elseif (itemName == "oilytrousers") then
			 targ:addItem(16344)
		elseif (itemName == "antaresharness") then
			 targ:addItem(11287)
		elseif (itemName == "roundelearring") then
			 targ:addItem(16002)
		elseif (itemName == "pythiasash1") then
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
		else
			setGiven = false;
		end	
		if(setGiven) then
			player:PrintToPlayer( string.format( "Gave player '%s' the item '%s' ", target, itemName ) )
		else
			player:PrintToPlayer("You must specify a valid item name, !givespitem1 list")
		end
    end
end
