---------------------------------------------------------------------------------------------------
-- func: @AccMode
-- desc: Toggles AccMode on the player; granting them several mods
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 4,
    parameters = ""
};

function onTrigger(player)
    if (player:getCharVar("AccMode") == 0) then
        -- Toggle AccMode on..
        player:setCharVar("AccMode", 1);

        -- player:addStatusEffect(EFFECT_MAX_HP_BOOST,1000,0,0);
        -- player:addStatusEffect(EFFECT_MAX_MP_BOOST,1000,0,0);		
        -- player:addStatusEffect(EFFECT_REGEN,1000,0,0);	
		-- player:addStatusEffect(EFFECT_REGAIN,1000,0,0);
		
        -- Add bonus mods to the player..
        player:addMod(tpz.mod.MOD_MACC,2500);
		player:addMod(tpz.mod.MOD_RACC,2500);
        player:addMod(tpz.mod.MOD_ACC,2500);
		player:addMod(tpz.mod.MOD_EVA,500);
		player:addMod(tpz.mod.MOD_MEVA, 300);
		player:addMod(tpz.mod.MOD_DEF,500);
		player:addMod(tpz.mod.MOD_MDEF, 300);		
		--player:addMod(tpz.mod.MOD_HASTE_ABILITY,300);
		player:addMod(tpz.mod.MOD_RANGED_DELAYP,-40);		
		player:addMod(tpz.mod.MOD_STORETP, 7);	
		-- player:addMod(tpz.mod.MOD_TREASURE_HUNTER, 8);		

        -- Heal the player from the new buffs..
        player:setHP( 50000 );
        player:setMP( 50000 );
	
		player:PrintToPlayer("Acc Mode Enabled");
    else
        -- Toggle AccMode off..
        player:setCharVar("AccMode", 0);

        -- player:delStatusEffect(EFFECT_MAX_HP_BOOST);
        -- player:delStatusEffect(EFFECT_MAX_MP_BOOST);
        -- player:delStatusEffect(EFFECT_REGEN);			
		-- player:delStatusEffect(EFFECT_REGAIN);
		
        -- -- Remove bonus mods..
        player:delMod(tpz.mod.MOD_MACC,2500);
        player:delMod(tpz.mod.MOD_RACC,2500);	
        player:delMod(tpz.mod.MOD_ACC,2500);
		player:delMod(tpz.mod.MOD_EVA,500);	
		player:delMod(tpz.mod.MOD_MEVA, 300);
		player:delMod(tpz.mod.MOD_MEVA, 300);
		player:delMod(tpz.mod.MOD_DEF,500);		
		--/player:delMod(tpz.mod.MOD_HASTE_ABILITY,300);
		player:delMod(tpz.mod.MOD_RANGED_DELAYP,-40);			
		player:delMod(tpz.mod.MOD_STORETP, 7);		
		-- player:delMod(tpz.mod.MOD_TREASURE_HUNTER, 8);	
		
		player:PrintToPlayer("Acc Mode Disabled");		
    end
end