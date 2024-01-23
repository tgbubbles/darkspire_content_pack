include('pony/wingclose.lua')
include('pony/personalmodel.lua')
include('pony/playermodel.lua')

if SERVER then
	AddCSLuaFile("autorun/pony_init.lua")
	
	AddCSLuaFile("pony/wingclose.lua")
	AddCSLuaFile("pony/personalmodel.lua")
	AddCSLuaFile('pony/playermodel.lua')
	
	include('pony/viewoffset.lua')
end