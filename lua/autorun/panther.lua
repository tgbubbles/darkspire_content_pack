list.Set( "PlayerOptionsModel", "Black Panther", "models/kaesar/blackpanther/blackpanther.mdl" )
player_manager.AddValidModel( "Black Panther", "models/kaesar/blackpanther/blackpanther.mdl" )
player_manager.AddValidHands( "Black Panther", "models/kaesar/blackpanther/c_arms_blackpanther.mdl", 0, "00000000" )

--Add NPC
local Category = "Black Panther NPCs"

local NPC = { 	Name = "Hostile Black Panther", 
				Class = "npc_combine_s",
				Weapons = { "weapon_crowbar" },
				Model = "models/kaesar/blackpanther/blackpanther.mdl",
				Health = "250",
				Squadname = "BLACKPANTHER",
				Numgrenades = "4",
                                Category = Category    }

list.Set( "NPC", "Hostile_panther", NPC )

local NPC = { 	Name = "Friendly Black Panther", 
				Class = "npc_citizen",
				Weapons = { "weapon_crowbar" },
				Model = "models/kaesar/blackpanther/blackpanther.mdl",
				Health = "300",
				KeyValues = { citizentype = 4 },
                                Category = Category    }

list.Set( "NPC", "Friendly_panther", NPC )