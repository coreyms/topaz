---------------------------------------------------------------------------------------------------
-- func: @kings <nm>
-- auth: Sonicblazer
-- desc: Consolidate HNM warp
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 2,
    parameters = "s"
};


function onTrigger(player, nm)
		
	if (nm == "kirin") then
		player:setPos(-82, 32, 3, 0, 178); -- Kirin
	elseif (nm == "genbu") then
		player:setPos(260, -70, 511, 0, 130); -- Genbu
	elseif (nm == "seiryu") then
		player:setPos(567, -70, -93, 0, 130); -- Seiryu
	elseif (nm == "suzaku") then
		player:setPos(-511, -70, -263, 0, 130); -- Suzaku
	elseif (nm == "byakko") then
		player:setPos(-409, -70, 393, 0, 130); -- Byakko
	elseif (nm == "ulli") then
		player:setPos(733, -99, -576, 0, 178); -- Ulli
	elseif (nm == "faust") then
		player:setPos(820, 0, -54, 0, 178); -- Faust
	elseif (nm == "olla") then
		player:setPos(854, 0, 98, 0, 178); -- Olla
	elseif (nm == "bb") then
		player:setPos(7, 0, -283, 0, 177); -- Brigandish Blade
	elseif (nm == "sc") then
		player:setPos(378, -3, 374, 0, 177); -- Steam Cleaner
	elseif (nm == "zip") then
		player:setPos(-196, 0, 460, 0, 177); -- Zipacna
	elseif (nm == "mg") then
		player:setPos(859, -99, -656, 0, 178); -- Mother Globe
	elseif (nm == "main") then
		player:setPos(-1, -34, -460, 0, 130); -- Vtra //todo - get correct pos
	end
end;