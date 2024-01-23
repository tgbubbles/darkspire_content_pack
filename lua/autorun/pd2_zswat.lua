list.Set( "PlayerOptionsAnimations", "PD2_zeal_swat", { "idle_suitcase", "menu_combine", "idle_all_01" } )
player_manager.AddValidModel( "PD2_zeal_swat", "models/payday2/units/zeal_swat_player.mdl" )
player_manager.AddValidHands( "PD2_zeal_swat", "models/payday2/units/zeal_swat_arms.mdl",	0, "0000000" )

local Category = "PAYDAY 2 NPCs"

local NPC = {
	Name = "PD2 Zeal SWAT (Enemy)", 
	Class = "npc_combine_s",
	Model = "models/payday2/units/zeal_swat_combine.mdl",
	Health = "100",
	Squadname = "Killing",
	Numgrenades = "4",
	Weapons = { "weapon_ar2", "weapon_smg1" },
	Category = Category
}
list.Set( "NPC", "pd2_zeal_swat_combine", NPC )

local NPC = {
	Name = "PD2 Zeal SWAT (Friendly)", 
	Class = "npc_citizen",
	Model = "models/payday2/units/zeal_swat_rebel.mdl",
	Health = "300",
	KeyValues = { citizentype = 4 },
	Weapons = { "weapon_ar2", "weapon_smg1" },
	Category = Category
}
list.Set( "NPC", "pd2_zeal_swat_rebel", NPC )