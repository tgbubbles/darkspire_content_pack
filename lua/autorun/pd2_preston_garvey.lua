local NPC = { 	Name = "preston_garvey_m", 
				Class = "npc_Citizen",
				Model = "models/shaklin/payday2/preston_garvey_npc.mdl",
				Health = "1500",
				KeyValues = { citizentype = 4 },
				Category = "Fallout4"	}


list.Set( "NPC", "npc_garvey_m", NPC )


/*
	Addon by Mewtwo	
*/

player_manager.AddValidModel( "garvey", 		"models/player/preston_garvey_m.mdl" );
player_manager.AddValidHands( "garvey", "models/shaklin/payday2/weapons/arms/c_arms_garvey_pres.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "synth_gen2_m", 	"models/player/preston_garvey_m.mdl" );