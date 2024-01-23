player_manager.AddValidModel( "Murkywater Medic", "models/humangrunt/payday2/murkywater/murkywater_medicpm.mdl" )
player_manager.AddValidHands( "Murkywater Medic", "models/humangrunt/payday2/murkywater/c_murkywater_medic_arms.mdl", 0, "00000000" )

local nextName
local tbNPCs = {}

local function AddNPC(category, name, class, model, keyvalues, weapons, spawnflags)
		list.Set("NPC",name,{Name = name,Class = class,Model = model,Category = category,KeyValues = keyvalues,Weapons = weapons, SpawnFlags = spawnflags})
		tbNPCs[name] = model
end

AddNPC("Murkywater", "Murkywater Medic (Hostile)", "npc_combine_s", "models/humangrunt/payday2/murkywater/murkywater_medic.mdl", {citizentype = CT_UNIQUE, SquadName = "combine"}, {"weapon_ar2","weapon_smg1","weapon_shotgun"})
AddNPC("Murkywater", "Murkywater Medic (Friendly)", "npc_citizen", "models/humangrunt/payday2/murkywater/murkywater_medicg.mdl", {citizentype = CT_UNIQUE, SquadName = "rebels"}, {"weapon_ar2"})












