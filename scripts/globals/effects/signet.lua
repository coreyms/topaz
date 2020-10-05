-----------------------------------
--
--     tpz.effect.SIGNET
--
--   Signet is a a beneficial Status Effect that allows the acquisition of Conquest Points and Crystals
--   from defeated enemies that grant Experience Points.

--   Increased Healing HP
--   No TP loss while resting
--   Bonus experience earned in smaller parties
--   Increased defense and evasion against attacks from your auto-attack target when even match or lower
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onEffectGain(target, effect)
    
	local signetBonus = GetServerVariable("SignetBonus")
	
	if(signetBonus == 1) then
		target:addMod(tpz.mod.FASTCAST, 20)
		target:addMod(tpz.mod.REFRESH, 3)
		target:addMod(tpz.mod.MATT, 20)
		target:addMod(tpz.mod.MACC, 20)
	elseif(signetBonus == 2) then
		target:addMod(tpz.mod.HASTE_ABILITY, 20)
		target:addMod(tpz.mod.REGEN, 20)
		target:addMod(tpz.mod.ATTP, 10)
		target:addMod(tpz.mod.ACC, 25)
	elseif(signetBonus == 3) then
		target:addMod(tpz.mod.CRITHITRATE, 15)
		target:addMod(tpz.mod.STORETP, 20)
		target:addMod(tpz.mod.REGAIN, 20)
		target:addMod(tpz.mod.TP_BONUS, 500)
	elseif(signetBonus == 4) then
		target:addMod(tpz.mod.DUAL_WIELD, 20)
		target:addMod(tpz.mod.SUBTLE_BLOW, 20)
		target:addMod(tpz.mod.DEF, 20)
		target:addMod(tpz.mod.EVA, 20)
	elseif(signetBonus == 5) then
		target:addMod(tpz.mod.MAGIC_SKILLUP_RATE, 15)
		target:addMod(tpz.mod.COMBAT_SKILLUP_RATE, 15)
		target:addMod(tpz.mod.SYNTH_SKILL_GAIN, 15)
		target:addMod(tpz.mod.EXP_BONUS, 75)
	elseif(signetBonus == 6) then
		target:addMod(tpz.mod.CURE_POTENCY, 20)
		target:addMod(tpz.mod.HEALING, 25)
		target:addMod(tpz.mod.SPELLINTERRUPT, 25)
		target:addMod(tpz.mod.CURE_CAST_TIME, 20)
	elseif(signetBonus == 7) then
		target:addMod(tpz.mod.RACC, 25)
		target:addMod(tpz.mod.RATT, 25)
		target:addMod(tpz.mod.ARCHERY, 25)
		target:addMod(tpz.mod.MARKSMAN, 25)
	elseif(signetBonus == 8) then
		target:addMod(tpz.mod.TRIPLE_ATTACK, 15)
		target:addMod(tpz.mod.TA_TRIPLE_DAMAGE, 15)
		target:addMod(tpz.mod.TREASURE_HUNTER, 2)
		target:addMod(tpz.mod.ALL_SONGS_EFFECT, 5)
	elseif(signetBonus == 9) then
		target:addMod(tpz.mod.DOUBLE_ATTACK, 15)
		target:addMod(tpz.mod.DA_DOUBLE_DAMAGE, 15)
		target:addMod(tpz.mod.RAPID_SHOT, 15)
		target:addMod(tpz.mod.QUICK_MAGIC, 15)
	elseif(signetBonus == 10) then
		target:addMod(tpz.mod.FISH, 5)
		target:addMod(tpz.mod.WOOD, 5)
		target:addMod(tpz.mod.SMITH, 5)
		target:addMod(tpz.mod.GOLDSMITH, 5)
		target:addMod(tpz.mod.CLOTH, 5)
		target:addMod(tpz.mod.LEATHER, 5)
		target:addMod(tpz.mod.BONE, 5)
		target:addMod(tpz.mod.ALCHEMY, 5)
		target:addMod(tpz.mod.COOK, 5)
	end
	target:addMod(tpz.mod.HPHEAL, 100)
	target:addMod(tpz.mod.MPHEAL, 50)
end

function onEffectTick(target, effect)
end

function onEffectLose(target, effect)

	local signetBonus = GetServerVariable("SignetBonus")

	if(signetBonus == 1) then
		target:delMod(tpz.mod.FASTCAST, 20)
		target:delMod(tpz.mod.REFRESH, 3)
		target:delMod(tpz.mod.MATT, 20)
		target:delMod(tpz.mod.MACC, 20)
	elseif(signetBonus == 2) then
		target:delMod(tpz.mod.HASTE_ABILITY, 20)
		target:delMod(tpz.mod.REGEN, 20)
		target:delMod(tpz.mod.ATTP, 10)
		target:delMod(tpz.mod.ACC, 25)
	elseif(signetBonus == 3) then
		target:delMod(tpz.mod.CRITHITRATE, 15)
		target:delMod(tpz.mod.STORETP, 20)
		target:delMod(tpz.mod.REGAIN, 20)
		target:delMod(tpz.mod.TP_BONUS, 500)
	elseif(signetBonus == 4) then
		target:delMod(tpz.mod.DUAL_WIELD, 20)
		target:delMod(tpz.mod.SUBTLE_BLOW, 20)
		target:delMod(tpz.mod.DEF, 20)
		target:delMod(tpz.mod.EVA, 20)
	elseif(signetBonus == 5) then
		target:delMod(tpz.mod.MAGIC_SKILLUP_RATE, 15)
		target:delMod(tpz.mod.COMBAT_SKILLUP_RATE, 15)
		target:delMod(tpz.mod.SYNTH_SKILL_GAIN, 15)
		target:delMod(tpz.mod.EXP_BONUS, 75)
	elseif(signetBonus == 6) then
		target:delMod(tpz.mod.CURE_POTENCY, 20)
		target:delMod(tpz.mod.HEALING, 25)
		target:delMod(tpz.mod.SPELLINTERRUPT, 25)
		target:delMod(tpz.mod.CURE_CAST_TIME, 20)
	elseif(signetBonus == 7) then
		target:delMod(tpz.mod.RACC, 25)
		target:delMod(tpz.mod.RATT, 25)
		target:delMod(tpz.mod.ARCHERY, 25)
		target:delMod(tpz.mod.MARKSMAN, 25)
	elseif(signetBonus == 8) then
		target:delMod(tpz.mod.TRIPLE_ATTACK, 15)
		target:delMod(tpz.mod.TA_TRIPLE_DAMAGE, 15)
		target:delMod(tpz.mod.TREASURE_HUNTER, 2)
		target:delMod(tpz.mod.ALL_SONGS_EFFECT, 5)
	elseif(signetBonus == 9) then
		target:delMod(tpz.mod.DOUBLE_ATTACK, 15)
		target:delMod(tpz.mod.DA_DOUBLE_DAMAGE, 15)
		target:delMod(tpz.mod.RAPID_SHOT, 15)
		target:delMod(tpz.mod.QUICK_MAGIC, 15)
	elseif(signetBonus == 10) then
		target:delMod(tpz.mod.FISH, 5)
		target:delMod(tpz.mod.WOOD, 5)
		target:delMod(tpz.mod.SMITH, 5)
		target:delMod(tpz.mod.GOLDSMITH, 5)
		target:delMod(tpz.mod.CLOTH, 5)
		target:delMod(tpz.mod.LEATHER, 5)
		target:delMod(tpz.mod.BONE, 5)
		target:delMod(tpz.mod.ALCHEMY, 5)
		target:delMod(tpz.mod.COOK, 5)
	end
	target:delMod(tpz.mod.HPHEAL, 100)
	target:delMod(tpz.mod.MPHEAL, 50)
end
