if ponyply_wings and ponyply_wings == true then return end

ponyply_wings = true
CreateConVar( "pony_wingclose", "1", { FCVAR_REPLICATED, FCVAR_ARCHIVE } )
CreateConVar( "pony_sb_noclipcheck", "1", { FCVAR_REPLICATED, FCVAR_ARCHIVE } )

local function Pony_WiOpClo( ply, bool )
	if !GetConVar("pony_wingclose"):GetBool() then return end
	if ply:GetBodygroupName(1) != "PlayerWings" then return end
	if ply:IsAdmin() then
		if bool then
			ply:SetBodygroup( 1 , 1 )
		else
			ply:SetBodygroup( 1 , 0 )
		end
	else
		if GetConVar("pony_sb_noclipcheck"):GetBool() then
			if GetConVar("sbox_noclip"):GetBool() then
				if bool then
					ply:SetBodygroup( 1 , 1 )
				else
					ply:SetBodygroup( 1 , 0 )
				end
			else
				ply:SetBodygroup( 1 , 0 )
			end
		else
			if bool then
				ply:SetBodygroup( 1 , 1 )
			else
				ply:SetBodygroup( 1 , 0 )
			end
		end
	end
end

hook.Add( "PlayerNoClip", "Pony_OpenWingOnFly", Pony_WiOpClo )