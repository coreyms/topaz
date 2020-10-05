---------------------------------------------------------------------------------------------------
-- func: changesignet
-- desc: changes the signet bonus
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 3,
    parameters = "i"
}

function onTrigger(player, input)

	if (input == 0 or input == nil) then
        player:PrintToPlayer( "1: Fast Cast, Refresh, MAB, MACC | 2: Haste, Regen, ATT, ACC");
		player:PrintToPlayer( "3: Crit HR, Store TP, Regain, TP Bonus | 4: Dual Wield, Subtle Blow, DEF, EVA");
		player:PrintToPlayer( "5: EXP Bonus, Skill-up Rate: Combat, Magic, Crafting | 6: Cure Pot and Cast Time, Healing, Spell Interrupt");
        player:PrintToPlayer( "7: RACC, RATT, Archery, Marksmenship | 8: TA, TA Dmg, TH, All Songs");
		player:PrintToPlayer( "9: DA, DA Dmg, Rapid Shot, Quick Magic | 10: ALL Crafting Skills");
	elseif (input == 1) then
		SetServerVariable("SignetBonus", 1)
		player:PrintToPlayer("New Signet Bonus: Fast Cast, Refresh, MAB, MACC")
	elseif (input == 2) then
		SetServerVariable("SignetBonus", 2)
		player:PrintToPlayer("New Signet Bonus: Haste, Regen, ATT, ACC")
	elseif (input == 3) then
		SetServerVariable("SignetBonus", 3)
		player:PrintToPlayer("New Signet Bonus: Crit HR, Store TP, Regain, TP Bonus")
	elseif (input == 4) then
		SetServerVariable("SignetBonus", 4)
		player:PrintToPlayer("New Signet Bonus: Dual Wield, Subtle Blow, DEF, EVA")
	elseif (input == 5) then
		SetServerVariable("SignetBonus", 5)
		player:PrintToPlayer("New Signet Bonus: EXP Bonus, Skill-up Rate: Combat")
	elseif (input == 6) then
		SetServerVariable("SignetBonus", 6)
		player:PrintToPlayer("New Signet Bonus: Cure Pot and Cast Time, Healing, Spell Interrupt")
	elseif (input == 7) then
		SetServerVariable("SignetBonus", 7)
		player:PrintToPlayer("New Signet Bonus: RACC, RATT, Archery, Marksmenship")
	elseif (input == 8) then
		SetServerVariable("SignetBonus", 8)
		player:PrintToPlayer("New Signet Bonus: TA, TA Dmg, TH, All Songs")
	elseif (input == 9) then
		SetServerVariable("SignetBonus", 9)
		player:PrintToPlayer("New Signet Bonus: DA, DA Dmg, Rapid Shot, Quick Magic")
	elseif (input == 10) then
		SetServerVariable("SignetBonus", 10)
		player:PrintToPlayer("New Signet Bonus: ALL Crafting Skills")
	else
		player:PrintToPlayer( "1: Fast Cast, Refresh, MAB, MACC | 2: Haste, Regen, ATT, ACC");
		player:PrintToPlayer( "3: Crit HR, Store TP, Regain, TP Bonus | 4: Dual Wield, Subtle Blow, DEF, EVA");
		player:PrintToPlayer( "5: EXP Bonus, Skill-up Rate: Combat, Magic, Crafting | 6: Cure Pot and Cast Time, Healing, Spell Interrupt");
        player:PrintToPlayer( "7: RACC, RATT, Archery, Marksmenship | 8: TA, TA Dmg, TH, All Songs");
		player:PrintToPlayer( "9: DA, DA Dmg, Rapid Shot, Quick Magic | 10: ALL Crafting Skills");
	end
end
