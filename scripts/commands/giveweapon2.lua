---------------------------------------------------------------------------------------------------
-- func: givespitem <player> <item name>
-- desc: Gives a special item to the target player.
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "ss"
}

function onTrigger(player, msg)
	player:PrintToPlayer("[No items on this page yet, just for future reference]")
end
