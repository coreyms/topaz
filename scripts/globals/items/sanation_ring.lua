-----------------------------------------
-- ID: 14677
-- Item: Sanation Ring
-- Item Effect: MP recovered while healing +3
-- Duration: 3 Minutes
-----------------------------------------
require("scripts/globals/status")
-----------------------------------------

function onItemCheck(target)
    local effect = target:getStatusEffect(dsp.effect.ENCHANTMENT)
    if effect ~= nil and effect:getSubType() == 14677 then
        target:delStatusEffect(dsp.effect.ENCHANTMENT)
    end
    return 0
end

function onItemUse(target)
    target:addStatusEffect(dsp.effect.ENCHANTMENT,0,0,180,15486)
end

function onEffectGain(target,effect)
    target:addMod(dsp.mod.MPHEAL, 3)
end

function onEffectLose(target, effect)
    target:delMod(dsp.mod.MPHEAL, 3)
end