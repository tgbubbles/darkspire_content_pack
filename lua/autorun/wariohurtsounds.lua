CreateConVar( "sv_hurtsounds", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"
CreateConVar( "sv_viewheight", "1", { FCVAR_REPLICATED, FCVAR_NOTIFY } ) --Incase you find it annoying somehow you can always disable it with "sv_hurtsounds"


local function WarioDeathSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	
	if (ply:GetModel() == "models/cktheamazingfrog/player/warioworld/wario.mdl") then
		if ply:WaterLevel() == 3 then
		ply:EmitSound("dialog/wario/death_4.wav") else
		ply:EmitSound("dialog/wario/death_" .. math.random( 1, 4 ) .. ".wav") end
	end

	end
end
hook.Add( "DoPlayerDeath", "WarioDeathSounds", WarioDeathSounds )

wario_hurt_spam = false
local function WarioHurtSounds(ply)
	if GetConVarNumber( "sv_hurtsounds" ) == 1 then
	if ply:Health() == 0 then return end
	if wario_hurt_spam == true then return end

	wario_hurt_spam = true
	timer.Create( "WarioPly_SVD4_"..ply:SteamID(), 1, 1, function()
	wario_hurt_spam = false
	end)

	if (ply:GetModel() == "models/cktheamazingfrog/player/warioworld/wario.mdl") then
	ply:EmitSound("dialog/wario/hurt_" .. math.random( 1, 5 ) .. ".wav")
	end

	end
end
hook.Add( "PlayerHurt", "WarioHurtSounds", WarioHurtSounds )

hook.Add( "PlayerSpawn", "WarioSetViewOffset2", function( ply )
timer.Create( "WarioPly_SVD3_"..ply:SteamID(), 0.1, 1, function()
if (ply:GetModel() == "models/cktheamazingfrog/player/warioworld/wario.mdl") then
ply:EmitSound("dialog/wario/spawn_" .. math.random( 1, 5 ) .. ".wav")
end

end)
end)
