--------------------------------------------------------------
-- func: @shop <page number>
-- auth: forgottenandlost
-- desc: opens the custom moogle shop menu anywhere in the world
-- update: marathon 3.21.16
--------------------------------------------------------------

cmdprops =
{
    permission = 0,
    parameters = "i"
};

function onTrigger(player,page)
    if (page == 0 or page == nil) then
        player:PrintToPlayer( "1: Crystal Depot, 2: Pharmacy, 3: Food Shop");
        player:PrintToPlayer( "4: Tool Shop, 5: Ammo Shop, 6: Pet Shop");
        player:PrintToPlayer( "7: Automaton Shop, 8: Rank Perks, 9: ZM Perks");
    elseif (page == 1) then -- HQ Crystals
        local stock_1 =
        {
            4238,100,   -- HQ Fire Crystal
            4239,100,   -- HQ Ice Crystal
            4240,100,   -- HQ Wind Crystal
            4241,100,   -- HQ Earth Crystal
            4242,100,   -- HQ Lightning Crystal
            4243,100,   -- HQ Water Crystal
            4244,100,   -- HQ Light Crystal
            4245,100,   -- HQ Dark Crystal
            4104,100,   -- HQ Fire Cluster
            4105,100,   -- HQ Ice Cluster
            4106,100,   -- HQ Wind Cluster
            4107,100,   -- HQ Earth Cluster
            4108,100,   -- HQ Lightning Cluster
            4109,100,   -- HQ Water Cluster
            4110,100,   -- HQ Light Cluster
            4111,100,   -- HQ Dark Cluster
			15444,100,  -- carpenter's belt
			15445,100,  -- Blacksmith's belt
			15446,100,  -- Goldsmith's belt
			15447,100,  -- weaver's belt
			15448,100,  -- Tanner's belt
			15449,100,  -- Boneworker's belt
			15450,100,  -- Alchemist's belt
			15451,100,  -- Culinarian's belt
			
			
        };
        tpz.shop.general(player, stock_1);
        player:PrintToPlayer( "Crystal Depot: Welcome, Kupo!");
    elseif (page == 2) then -- Pharmacy
        local stock_2 =
        {
			--4172,100,	--Reraiser
			4165,100,   --Silent Oil
			4164,100,   --Prism Powder
			4157,100,   --Poison pots
			4161,100,	--Sleep Pots
			4149,100,   --Panacea
			4155,100,   --Remedy
			5418,100,	--Tincture
			4153,100,   --Antacid
			4154,100,	--Holy Water
			5253,100,   --Hermes Quencher
			4213,100,   --Icarus Wing
			17040,100,  --Warp Cudgel
			14790,100,  --Reraise Earring
			15211,100,  --Reraise Hairpin
			4175,100000	--Vile Elixir +1
        };
        tpz.shop.general(player, stock_2);
        player:PrintToPlayer( "Pharmacy: Welcome, Kupo!");
    elseif (page == 3) then -- Food Shop
        local stock_3 =
        {
			4303,100,	--Persikos Au Lait
			4558,100,	--Yagudo Drink	
			5718,100,   --Cream Puff
			5158,100,	--Vermillion Jelly
			5677,100, 	--Patriarch Sautee
			5212,100,	--Arrabbiata +1
			5744,100,	--Marinara Pizza +1
			5603,100,	--Hydra Kofte +1
			4574,100,	--Meat Chiefkabob
			4350,100,	--Dragon Steak
			4488,100,	--Jack-o'-Lantern
			5156,100,	--Porcupine Pie
			5216,100,	--Tentacle Sushi +1
			5162,100,	--Squid Sushi +1
			5163,100,	--Sole Sushi +1
			5179,100,	--Dorado Sushi +1
			5177,100,	--Bream Sushi +1
			5160,100,	--Urchin Sushi +1
			5153,100,	--Fatty Tuna Sushi
			5753,100,   --Pot-Au-Feu +1
			5175,100,	--Leremieu Taco
			5765,100,   -- Red Curry Bun +1
			4339,100,	--Rolanberry Pie +1
			4523,100,	--Melon Pie +1
			5200,100,   --Pescatora+1
			4269,100,	--Bijou Glace
			4576,100,	--Wizard Cookie
        };
        tpz.shop.general(player, stock_3);
        player:PrintToPlayer( "Food Shop: Welcome, Kupo!");
    elseif (page == 4) then
        local stock_4 =
        {
            5417,100,    -- Toolbag (Sanjaku-Tenugui)
            5319,100,    -- Toolbag (Shinobi-Tabi)
            5314,100,    -- Toolbag (Shihei)
            5867,100,    -- Toolbag (Inoshishinofuda)
            5868,100,    -- Toolbag (Shikanofuda)
            5869,100,    -- Toolbag (Chonofuda)
            1022,100,    -- Thief's Tools
			5870,100,    -- Trump Card
			2187,100,	 -- Gold Coin
			2184, 1,	 -- Bronze Coin
        };
        tpz.shop.general(player, stock_4);
        player:PrintToPlayer( "Tool shop: Welcome, Kupo!");
		
    elseif (page == 5) then -- Ammo
        local stock_5 =
        {
			5340,100,	--Silver Bullet pouch x12
			5359,100,   --Bronze Bullet pouch
			5363,100,   --Bullet Pouch
			5353,100,   --Iron Bullet Pouch
			5342,100,   --Corsair Bullet Pouch
			5416,100,   --Steel Bullet Pouch
			19229,1,    --Copper Bullet
			19228,1,    --Pakton Bullet
			19201,1,    --Electrum Bullet
			17300,1,    --Platinum Bullet
			17318,1,	--Wooden Arrow
			17332,1,	--Fang Arrow
			17317,1,	--Gold Arrow
			17334,1,	--Platinum Arrow
			4220,100,	--Bone Quiver
			4226,100,	--Silver Quiver
			4222,100,	--Horn Quiver
			5332,100,	--Kabura Quiver
			17336,1,    --Crossbow Bolt
			19200,1,    --Black Bolt
			5334,100,   --Blind Bolt Quiver
			5335,100,   --Acid Bolt Quiver
			5338,100,   --Venom Bolt Quiver
			5337,100,	--Sleep Bolt Quiver
			5336,100,   --Holy Bolt Quiver
			4228,100,   --Mythril Bolt Quiver
			5339,100,   --Bloody Bolt Quiver
			4229,100,   --Darksteel Bolt
			17301,1,	--Shuriken
			17302,1,	--Juji Shuriken
			17303,1,	--Manji Shuriken
			17304,1,	--Fuma Shuriken
			18712,100,	--Koga Shuriken
        };
        tpz.shop.general(player, stock_5);
        player:PrintToPlayer( "Ammo Shop: Welcome, Kupo!");
		
	elseif (page == 6) then -- Petshop
        local stock_6 =
        {
			17016,100, -- Pet Food Alpha
	        17017,100, -- Pet Food Beta
			17018,100, -- Pet Food Gamma
			17019,100, -- Pet Food Delta
			17020,100, -- Pet food Epsilon
			17021,100, -- Pet Food Zeta
			17906,100, -- Turbid Toloi (Aroral Broth)
			17877,100, -- Courier Carrie (Fish Oil Broth)
			17890,100, -- Lifedrinker Lars (C. Blood Broth)
			17873,100, -- Panzer Galahad (Scarlet Sap)
			17884,100, -- Amigo Sabotender (Sun Water)
			17871,100, -- Saber Sravarde (Warm MEat Broth)
			17865,100, -- Lullaby Melodia (Singing Herbal Broth)
			17882,100, -- Homunculus (Alchemist's Water)
			17870,100, -- Tiger Familiar (Meat Broth)
			17880,100, -- Funguar Familiar (Seedbed Soil)
        };
        tpz.shop.general(player, stock_6);
        player:PrintToPlayer( "Pet Shop: I have to buy my friends!");	
	
	elseif (page == 7) then -- Automaton Shop
        local stock_7 =
        {
			18731,100,	--	Can Of Automaton Oil
			18732,100,	--	Can Of Automaton Oil +1
			18733,100,	--	Can Of Automaton Oil +2
			2501,100,	--	Black Puppet Turban
			2502,100,	--	White Puppet Turban
			2246,100,	--	Accelerator
			2249,100,	--	Accelerator II
			2252,100,	--	Analyzer
			2251,100,	--	Armor Plate
			2253,100,	--	Armor Plate II
			2322,100,	--	Attuner
			2262,100,	--	Auto-repair Kit
			2265,100,	--	Auto-repair Kit II
			3309,100,	--	Barrage Turbine
			3310,100,	--	Barrier Module
			2413,100,	--	Coiler
			2352,100,	--	Condenser
			2264,100,	--	Damage Gauge
			3314,100,	--	Disruptor
			2324,100,	--	Drum Magazine
			2351,100,	--	Dynamo
			2354,100,	--	Economizer
			2325,100,	--	Equalizer
			2328,100,	--	Eraser
			2409,100,	--	Flame Holder
			2263,100,	--	Flashbulb
			3311,100,	--	Galvanizer
			2412,100,	--	Hammermill
			3307,100,	--	Heat Capacitor
			2256,100,	--	Heat Seeker
			2259,100,	--	Heatsink
			2410,100,	--	Ice Maker
			2240,100,	--	Inhibitor
			2243,100,	--	Loudspeaker
			2245,100,	--	Loudspeaker II
			2242,100,	--	Mana Booster
			2327,100,	--	Mana Channeler
			2268,100,	--	Mana Conserver
			2267,100,	--	Mana Converter
			2258,100,	--	Mana Jammer
			2261,100,	--	Mana Jammer II
			2266,100,	--	Mana Tank
			2269,100,	--	Mana Tank II
			2353,100,	--	Optic Fiber
			2248,100,	--	Pattern Reader
			3312,100,	--	Percolator
			3308,100,	--	Power Cooler
			2347,100,	--	Reactive Shield
			2411,100,	--	Replicator
			2244,100,	--	Scanner
			2350,100,	--	Schurzen
			2247,100,	--	Scope
			2250,100,	--	Shock Absorber
			2329,100,	--	Smoke Screen
			2254,100,	--	Stabilizer
			2257,100,	--	Stabilizer II
			2260,100,	--	Stealth Screen
			2414,100,	--	Steam Jacket
			2238,100,	--	Strobe
			2323,100,	--	Tactical Processor
			2326,100,	--	Target Marker
			2239,100,	--	Tension Spring
			2241,100,	--	Tension Spring II
			2348,100,	--	Tranquilizer
			2349,100,	--	Turbo Charger
			3313,100,	--	Vivi-valve
			2255,100,	--	Volt Gun
        };
        tpz.shop.general(player, stock_7);
        player:PrintToPlayer( "Automaton Shop: Welcome, Kupo!");
		
    elseif (page == 8) then -- National Hero Specials
		local S_clear = player:hasCompletedMission(SANDORIA,THE_SECRET_WEAPON);
		local B_clear = player:hasCompletedMission(BASTOK,ON_MY_WAY);
		local W_clear = player:hasCompletedMission(WINDURST,AWAKENING_OF_THE_GODS);
        if (S_clear == true or B_clear == true or W_clear == true) then
            local stock_8a =
            {
                265,100,    -- Adamantoise Statue
                266,100,    -- Behemoth Statue
                267,100,    -- Fafnir Statue
                268,100,    -- Nomad Moogle Statue
                269,100,    -- Shadow Lord Statue
				17585,100,	-- Federation Signet Staff
				17584,100, 	-- Republic Signet Staff
				17583,100,  -- Kingdom Signet Staff
				15793,100,  -- Anniversary's Band
				14430,100, -- federation aketon
				14429,100, -- republic aketon
				14428,100, -- kingdom aketon
            };
            tpz.shop.general(player, stock_8a);
            player:PrintToPlayer( "National Hero Specials: Welcome, Kupo!");
        else
			local stock_8c =
            {
				15763,   1, -- Emperor's Band
            };
            tpz.shop.general(player, stock_8c);
            player:PrintToPlayer( "There isn't much in stock for low rank adventurers, Kupo!");
        end
    elseif (page == 9) then -- Mighty Hero Specials
        if (player:hasCompletedMission(ZILART,THE_CELESTIAL_NEXUS) == true) then
            local stock_9 =
            {
                272, 100,    -- Ark Angel HM. Statue
                273, 100,    -- Ark Angel EV. Statue
                274, 100,    -- Ark Angel TT. Statue
                275, 100,    -- Ark Angel MR. Statue
                276,  100,   -- Ark Angel GK. Statue
                18912,100,   -- Ark Saber
                18913,100,   -- Ark Sword
                18563,100,   -- Ark Scythe
                18545,100,   -- Ark Tabar
                18464,100,   -- Ark Tachi
            };
            tpz.shop.general(player, stock_9);
            player:PrintToPlayer( "Mighty Hero Specials: Welcome, Kupo!");
        else
            player:PrintToPlayer( "Clear 'Rise of the Zilart' to unlock this, Kupo!");
        end
    else
        -- local Mog = 16982044;
        -- message = "Test!";
        -- SpoofSay(Mog,player:getID(),message);
        player:PrintToPlayer( string.format( "The MogShop catalog doesn't have a page %i, Kupo!", page ) );
    end
end;