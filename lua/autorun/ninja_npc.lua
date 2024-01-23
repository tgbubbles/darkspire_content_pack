local Category = "Vinrax NPCS"
local NPC = {
		 		Name = "Ninja", 
				Class = "npc_citizen",
				KeyValues = { citizentype = 4 },
				Model = "models/vinrax/player/ninja_player.mdl",
				Health = "250",
				Category = Category	
		}

list.Set( "NPC", "npc_ninja", NPC )