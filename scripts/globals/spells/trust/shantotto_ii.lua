-----------------------------------------
-- Trust: Shantotto II
-----------------------------------------
require("scripts/globals/gambits")
require("scripts/globals/magic")
require("scripts/globals/trust")
-----------------------------------------

function onMagicCastingCheck(caster, target, spell)
    return tpz.trust.canCast(caster, spell, tpz.magic.spell.SHANTOTTO)
end

function onSpellCast(caster, target, spell)
    return tpz.trust.spawn(caster, spell)
end

function onMobSpawn(mob)
    -- tpz.trust.message(mob, tpz.trust.message_offset.SPAWN)

    mob:addSimpleGambit(ai.t.TARGET, ai.c.MB_AVAILABLE, 0, ai.r.MA, ai.s.MB_ELEMENT, tpz.magic.spellFamily.NONE)
    mob:addSimpleGambit(ai.t.TARGET, ai.c.NOT_SC_AVAILABLE, 0, ai.r.MA, ai.s.HIGHEST, tpz.magic.spellFamily.NONE, 30)

    local power = mob:getMainLvl() 
    mob:addMod(tpz.mod.MATT, power)
    mob:addMod(tpz.mod.MACC, power)
    mob:addMod(tpz.mod.HASTE_MAGIC, 20)
    mob:SetAutoAttackEnabled(false)
end

function onMobDespawn(mob)
    -- tpz.trust.message(mob, tpz.trust.message_offset.DESPAWN)
end

function onMobDeath(mob)
    -- tpz.trust.message(mob, tpz.trust.message_offset.DEATH)
end
