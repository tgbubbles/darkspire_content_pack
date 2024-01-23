player_manager.AddValidModel( "Batman (BM:DT)","models/batman_dt_pm/Batman.mdl" )
player_manager.AddValidHands( "Batman (BM:DT)","models/batman_dt_pm/Batman_Arms.mdl",0,"00000000" )

local Category = "Batman: Dark Tomorrow"

local NPC = {   
        Name = "Batman Enemy", 
        Class = "npc_combine_s", 
        Model = "models/batman_dt_pm/Batman.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Batman (BM:DT) Enemy"
}

list.Set( "NPC", "npc_BatmanBMDTenemy", NPC ) 

local NPC = {   
        Name = "Batman Friend", 
        Class = "npc_citizen", 
        Model = "models/batman_dt_pm/Batman.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Batman (BM:DT) Friend"
}

list.Set( "NPC", "BatmanBMDTFriend", NPC ) 

