player_manager.AddValidModel( "Dr. Doofenshmirtz", "models/hellinspector/dr_doofenshmirtz/dr_doofenshmirtz_player.mdl" );

list.Set( "PlayerOptionsModel", "Dr. Doofenshmirtz", "models/hellinspector/dr_doofenshmirtz/dr_doofenshmirtz_player.mdl" );

player_manager.AddValidHands( "Dr. Doofenshmirtz", "models/hellinspector/dr_doofenshmirtz/dr_doofenshmirtz_arms.mdl", 0, "0" )

local Category = "Dr. Doofenshmirtz"

local NPC = {   
        Name = "Doof Enemy", 
        Class = "npc_combine_s", 
        Model = "models/hellinspector/dr_doofenshmirtz/dr_doofenshmirtz_player.mdl",              
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Doof Enemy"
}

list.Set( "NPC", "npc_Doofenemy", NPC ) 

local NPC = {   
        Name = "Doof Friend", 
        Class = "npc_citizen", 
        Model = "models/hellinspector/dr_doofenshmirtz/dr_doofenshmirtz_player.mdl",                
        Health = "100",                 
        KeyValues = { citizentype = 4 },                 
        Category = Category,
        Squadname = "Doof Friend"
}

list.Set( "NPC", "npc_DoofFriend", NPC ) 


