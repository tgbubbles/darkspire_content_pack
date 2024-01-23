player_manager.AddValidModel( "WW: Wario", "models/cktheamazingfrog/player/warioworld/wario.mdl" )
player_manager.AddValidHands( "WW: Wario", "models/cktheamazingfrog/player/warioworld/warioarms.mdl", 0, "00000000" )
list.Set( "PlayerOptionsModel", "WW: Wario", "models/cktheamazingfrog/player/warioworld/wario.mdl" )

local Category = "CK's NPCs"

local NPC = {   
        Name = "Wario Hostile", 
        Class = "npc_combine_s", 
        Model = "models/cktheamazingfrog/player/warioworld/wario.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Bad Wario"
}

list.Set( "NPC", "npc_warioenemy", NPC ) 

local NPC = {   
        Name = "Wario Friendly", 
        Class = "npc_citizen", 
        Model = "models/cktheamazingfrog/player/warioworld/wario.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Good Wario"
}

list.Set( "NPC", "npc_wariofriend", NPC )

--PRECACHING--

--Models

util.PrecacheModel( "models/cktheamazingfrog/player/warioworld/wario.mdl" )
util.PrecacheModel( "models/cktheamazingfrog/player/warioworld/warioarms.mdl" )


--Death / Drown Sounds

util.PrecacheSound( "dialog/wario/death_1.wav" )
util.PrecacheSound( "dialog/wario/death_2.wav" )
util.PrecacheSound( "dialog/wario/death_3.wav" )
util.PrecacheSound( "dialog/wario/death_4.wav" )

--Hurt Sounds

util.PrecacheSound( "dialog/wario/hurt_1.wav" )
util.PrecacheSound( "dialog/wario/hurt_2.wav" )
util.PrecacheSound( "dialog/wario/hurt_3.wav" )
util.PrecacheSound( "dialog/wario/hurt_4.wav" )
util.PrecacheSound( "dialog/wario/hurt_5.wav" )

--Spawn Sounds

util.PrecacheSound( "dialog/wario/spawn_1.wav" )
util.PrecacheSound( "dialog/wario/spawn_2.wav" )
util.PrecacheSound( "dialog/wario/spawn_3.wav" )
util.PrecacheSound( "dialog/wario/spawn_4.wav" )
util.PrecacheSound( "dialog/wario/spawn_5.wav" )