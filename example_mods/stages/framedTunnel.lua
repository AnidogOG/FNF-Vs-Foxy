function onCreate()
	makeLuaSprite('red', 'DAVE&BAMB/red', -200, -500);
	addLuaSprite('red',false)
	scaleObject('red', 150, 150);
	makeAnimatedLuaSprite('redtunnel','DAVE&BAMB/redtunnel',0,-100)addAnimationByPrefix('redtunnel', 'redtunnel', 'redtunnelperspective idle', 24, true);
	addLuaSprite('redtunnel',false)
	scaleObject('redtunnel', 1.6, 1.6);
end