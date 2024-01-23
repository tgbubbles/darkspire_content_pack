if SERVER then
	util.AddNetworkString( 'PonyPerModelRQ' )

	pony_permodels =
	{
		["STEAM_0:0:23435775"] = {"models/rainbowdash_player.mdl", 	true, {{3, 1}}, false},
		["STEAM_0:0:49487942"] = {"models/rainbowdash_player.mdl", 	true, {{4, 1}}, false},
	}

	net.Receive('PonyPerModelRQ', function()
		local ply = net.ReadEntity()
		if IsValid(ply) then
			PonyPerModelAdd( ply )
		end
	end )

	function PonyPerModelAdd( ply )
		if pony_permodels[ply:SteamID()] then
			local userdata = pony_permodels[ply:SteamID()]
			if userdata[4] then
				ply:SetModel( userdata[1] )
			end
			if ply:GetModel() == userdata[1] then
				for i=1,table.Count(ply:GetBodyGroups()) do
					ply:SetBodygroup(i,0)
				end
				if userdata[2] then
					local bodygroups = userdata[3]
					for i=1,table.Count( bodygroups ) do
						ply:SetBodygroup( bodygroups[i][1], bodygroups[i][2] )
					end
				end
			end
		end
	end
else
	concommand.Add( "dev_personalmodel", function()
		net.Start( 'PonyPerModelRQ' )
			net.WriteEntity( LocalPlayer() )
		net.SendToServer()
	end )
end