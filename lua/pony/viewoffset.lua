local models = {
	["models/rainbowdash_player.mdl"] 		=	{ 44.8, 33.6 }
}
	
if ponyply_view and ponyply_view == true then
	for k, v in pairs( models ) do
		ponyply_mdls[k] = v
	end
else
	ponyply_view = true
	CreateConVar( "pony_setviewheight", "1", { FCVAR_REPLICATED, FCVAR_ARCHIVE } )
	
	ponyply_mdls = models
	
	hook.Add( "PlayerSpawn", "PonySetViewOffset", function( ply )
		if !GetConVar("pony_setviewheight"):GetBool() then return end
		timer.Create( "PonySetViewDelay", 0.1, 1, function()
			if not ply:IsValid() then return end
			if not ponyply_mdls[ply:GetModel()] then
				ply:SetViewOffset( Vector( 0, 0, 64 ) )
				ply:SetViewOffsetDucked( Vector( 0, 0, 28 ) )
			else
				ply:SetViewOffset( Vector( 0, 0, ponyply_mdls[ply:GetModel()][1] ) )
				ply:SetViewOffsetDucked( Vector( 0, 0, ponyply_mdls[ply:GetModel()][2] ) )
			end
		end )
	end )
end