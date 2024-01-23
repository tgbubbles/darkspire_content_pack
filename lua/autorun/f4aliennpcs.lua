local Category = "Fallout 4 Alien Npcs"

local NPC = { 	Name = "Alien Bad", 
				Class = "npc_combine_s",
				Model = "models/npcs/pizzaroll/f4alienbad.mdl",
				Weapons = { "weapon_ar2" },
				Category = Category	}

list.Set( "NPC", "f4alienbad", NPC )


local NPC =
{
	Name = "Alien Good",
	Class = "npc_citizen",
	KeyValues =
	{
		citizentype = 4
	},
	Model = "models/npcs/pizzaroll/f4aliengood.mdl",
	Health = "100",
	Weapons = { "weapon_ar2" },
	Category = Category
}

list.Set( "NPC", "f4aliengood", NPC )