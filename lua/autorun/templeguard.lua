local function AddPlayerModel( name, model )

	list.Set( "PlayerOptionsModel", name, model )
	player_manager.AddValidModel( name, model )
	
end

AddPlayerModel( "Jedi Temple Guard", "models/player/swtor/arsenic/templeguard/templeguard.mdl" )
