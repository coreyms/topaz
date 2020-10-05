---------------------------------------------------------------------------------------------------
-- func: givespitem3 <player> <item name>
-- desc: Gives a special item to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "s"
}

function onTrigger(player, msg)
	player:PrintToPlayer("[No items on this page yet, just for future reference]")
	--player:delKeyItem(tpz.ki.ASSAULT_ARMBAND)
	--local currentAssault = player:getCurrentAssault()
	--player:PrintToPlayer(string.format("Current assault: %i", currentAssault))
	--player:PrintToPlayer("Changing assault")
	--player:delAssault(currentAssault);
	--player:addAssault(31);
	--currentAssault = player:getCurrentAssault()
	--player:PrintToPlayer(string.format("Current assault: %i", currentAssault))
end
