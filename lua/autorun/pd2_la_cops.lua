player_manager.AddValidModel( "Los Angeles Cop #1", "models/payday2/units/la_cop_1_player.mdl" )
player_manager.AddValidHands( "Los Angeles Cop #1", "models/payday2/units/la_cop_1_arms.mdl",	0, "0000000" )
player_manager.AddValidModel( "Los Angeles Cop #2", "models/payday2/units/la_cop_2_player.mdl" )
player_manager.AddValidHands( "Los Angeles Cop #2", "models/payday2/units/la_cop_2_arms.mdl",	0, "0000000" )
player_manager.AddValidModel( "Los Angeles Cop #3", "models/payday2/units/la_cop_3_player.mdl" )
player_manager.AddValidHands( "Los Angeles Cop #3", "models/payday2/units/la_cop_3_arms.mdl",	0, "0000000" )
player_manager.AddValidModel( "Los Angeles Cop #4", "models/payday2/units/la_cop_4_player.mdl" )
player_manager.AddValidHands( "Los Angeles Cop #4", "models/payday2/units/la_cop_4_arms.mdl",	0, "0000000" )

local Category = "PAYDAY 2 NPCs"

local NPC = { 	Name = "Los Angeles Cop #1 (Enemy)", 
				Class = "npc_metropolice",
				Health = "50",
				KeyValues = { squadname = "LACOP1" },
				Weapons = { "weapon_pistol" },
                                Category = Category    }
list.Set( "NPC", "la_cop_1_metropolice", NPC )

local NPC = { 	Name = "Los Angeles Cop #1 (Friendly)", 
				Class = "npc_citizen",
				Model = "models/payday2/units/la_cop_1_rebel.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_pistol" },
                                Category = Category    }

list.Set( "NPC", "la_cop_1_rebel", NPC )

local NPC = { 	Name = "Los Angeles Cop #2 (Enemy)", 
				Class = "npc_metropolice",
				Health = "50",
				KeyValues = { squadname = "LACOP2" },
				Weapons = { "weapon_pistol" },
                                Category = Category    }
list.Set( "NPC", "la_cop_2_metropolice", NPC )

local NPC = { 	Name = "Los Angeles Cop #2 (Friendly)", 
				Class = "npc_citizen",
				Model = "models/payday2/units/la_cop_2_rebel.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_pistol" },
                                Category = Category    }

list.Set( "NPC", "la_cop_2_rebel", NPC )

local NPC = { 	Name = "Los Angeles Cop #3 (Enemy)", 
				Class = "npc_combine_s",
				Model = "models/payday2/units/la_cop_3_combine.mdl",
				Health = "50",
				Squadname = "Killing",
				Numgrenades = "4",
				Weapons = { "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "la_cop_3_combine", NPC )

local NPC = { 	Name = "Los Angeles Cop #3 (Friendly)", 
				Class = "npc_citizen",
				Model = "models/payday2/units/la_cop_3_rebel.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_smg1" },
                                Category = Category    }

list.Set( "NPC", "la_cop_3_rebel", NPC )

local NPC = { 	Name = "Los Angeles Cop #4 (Enemy)", 
				Class = "npc_combine_s",
				Model = "models/payday2/units/la_cop_4_combine.mdl",
				Health = "50",
				Squadname = "Killing",
				Numgrenades = "4",
				Weapons = { "weapon_shotgun" },
                                Category = Category    }

list.Set( "NPC", "la_cop_4_combine", NPC )

local NPC = { 	Name = "Los Angeles Cop #4 (Friendly)", 
				Class = "npc_citizen",
				Model = "models/payday2/units/la_cop_4_rebel.mdl",
				Health = "150",
				KeyValues = { citizentype = 4 },
				Weapons = { "weapon_shotgun" },
                                Category = Category    }

list.Set( "NPC", "la_cop_4_rebel", NPC )

--Model fix (npc_metropolice can't change model with list.Set: do not have preset keyvalues)

hook.Add("PlayerSpawnedNPC","PD2CM",function(ply,npc)
	if npc:GetKeyValues().squadname == "LACOP1" then
		npc:SetModel("models/payday2/units/la_cop_1_metrocop.mdl")
		npc:SetKeyValue("squadname","")
		npc:SetPos(ply:GetEyeTrace().HitPos+Vector(0,0,15))
	end
	if npc:GetKeyValues().squadname == "LACOP2" then
		npc:SetModel("models/payday2/units/la_cop_2_metrocop.mdl")
		npc:SetKeyValue("squadname","")
		npc:SetPos(ply:GetEyeTrace().HitPos+Vector(0,0,15))
	end
end)