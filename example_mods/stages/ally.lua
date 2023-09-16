function onCreate()
	makeLuaSprite('farBuildings','DAVE&BAMB/farBuildings', -2680, 270)
	addLuaSprite('farBuildings',false)
	
	makeLuaSprite('floor_bloodless','DAVE&BAMB/floor_bloodless', -3000, 0)
	addLuaSprite('floor_bloodless',false)
		
	makeLuaSprite('clouds','DAVE&BAMB/clouds', -3000, 0)
	addLuaSprite('clouds',false)
	
	makeLuaSprite('closeBuildings','DAVE&BAMB/closeBuildings', -3000, 0)
	addLuaSprite('closeBuildings',false)

	makeAnimatedLuaSprite('unhinged_dumpsta','DAVE&BAMB/bgJunkers/unhinged_dumpsta',-300,1000)addAnimationByPrefix('unhinged_dumpsta', 'unhinged_dumpsta', 'Dump instance 1', 24, true);
	addLuaSprite('unhinged_dumpsta',false)
	scaleObject('unhinged_dumpsta', 1, 1)
	
	makeLuaSprite('shadows','DAVE&BAMB/shadows', -3000, 20)
	addLuaSprite('shadows',false)
end