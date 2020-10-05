---------------------------------------------------------------------------------------------------
-- func: zone
-- desc: Teleports a player to the given zone.
-- revised by: Sonic
---------------------------------------------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "s"
};

---------------------------------------------------------------------------------------------------
-- desc: List of zones with their auto-translated group and message id.
-- note: The format is as follows: groupId, messageId, zoneId
---------------------------------------------------------------------------------------------------
local zone_list =
{
    { 0x14, 0xBB, 48 }, -- Al Zahbi
    { 0x14, 0xDB, 50 }, -- Aht Urhgan Whitegate
    { 0x14, 0xBC, 50 }, -- Aht Urhgan Whitegate
    { 0x14, 0x4C, 230 }, -- Southern San d'Oria
    { 0x14, 0x30, 231 }, -- Northern San d'Oria
    { 0x14, 0x52, 232 }, -- Port San d'Oria
    { 0x14, 0x22, 233 }, -- Chateau d'Oraguille
    { 0x14, 0x46, 234 }, -- Bastok Mines
    { 0x14, 0x56, 235 }, -- Bastok Markets
    { 0x14, 0x3C, 236 }, -- Port Bastok
    { 0x14, 0x2F, 237 }, -- Metalworks
    { 0x14, 0x3A, 238 }, -- Windurst Waters
    { 0x14, 0x54, 239 }, -- Windurst Walls
    { 0x14, 0x45, 240 }, -- Port Windurst
    { 0x14, 0x38, 241 }, -- Windurst Woods
    { 0x14, 0x55, 242 }, -- Heavens Tower
    { 0x14, 0x13, 243 }, -- Ru'Lude Gardens
    { 0x14, 0x4E, 244 }, -- Upper Jeuno
    { 0x14, 0x0E, 245 }, -- Lower Jeuno
    { 0x14, 0x06, 246 }, -- Port Jeuno
    { 0x14, 0x31, 247 }, -- Rabao
    { 0x14, 0x5F, 248 }, -- Selbina
    { 0x14, 0x1E, 249 }, -- Mhaura
    { 0x14, 0x29, 250 }, -- Kazham
    { 0x14, 0x09, 252 }, -- Norg
};
---------------------------------------------------------------------------------------------------
-- func: onTrigger
-- desc: Called when this command is invoked.
---------------------------------------------------------------------------------------------------
function onTrigger(player, zoneId)
    local word  = "";
    local i     = 0;
    local zone  = zoneId;
	
    -- Ensure a zone was given..
    if (zoneId == nil) then
        player:PrintToPlayer("You must enter an Auto-translated zone.");
        return;
    end
    
    -- Was the zone auto-translated..
    if (string.sub(zoneId, 1, 2) == '\253\02' and string.byte(zoneId, 5) ~= nil and string.byte(zoneId, 6) == 0xFD) then
        -- Pull the group and message id from the translated string..
        local groupId = string.byte(zoneId, 4);
        local messageId = string.byte(zoneId, 5);
    
        -- Attempt to lookup this zone..
		if (player:getCharVar( 'inJail' ) == 0) then
			for k, v in pairs(zone_list) do
				if (v[1] == groupId and v[2] == messageId) then
					player:setPos(0, 0, 0, 0, v[3]);
					return;
				end
			end
		else
			player:PrintToPlayer( string.format( "You've been a bad, bad person. You are staying here for a while, kupo!", target ) );
		end
    
        -- Zone was not found, allow the user to know..
        player:PrintToPlayer('Unknown zone, could not teleport.');
        return;
	else
		-- Any other entries aside from the auto-translated will be rejected..
		player:PrintToPlayer("You must enter an Auto-translated zone.");
    end
end
