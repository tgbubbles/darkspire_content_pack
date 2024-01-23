
if SERVER then
	AddCSLuaFile("skins/muroskin.lua")
	AddCSLuaFile()

	resource.AddSingleFile("materials/muroskin/muroskin.png")
else
	include("skins/muroskin.lua")

	hook.Add("ForceDermaSkin", "skinforcehook", function()
		return "muroskin"
	end)
end
