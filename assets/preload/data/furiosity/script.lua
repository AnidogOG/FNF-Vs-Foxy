function onBeatHit()
if curBeat == 324 then
makeLuaSprite('sky_night', 'DAVE&BAMB/sky_night', -600, -200);
	scaleObject('sky_night', 0.9, 0.9);

	makeLuaSprite('hills_night', 'DAVE&BAMB/hills_night', -600, 20);
	scaleObject('hills_night', 0.9, 0.9);
	
	makeLuaSprite('grass bg_night', 'DAVE&BAMB/grass bg_night', -800, 600);
	scaleObject('grass bg_night', 0.9, 0.9);

	makeLuaSprite('gate_night', 'DAVE&BAMB/gate_night', -600, 370);
	scaleObject('gate_night', 0.9, 0.9);
	
	makeLuaSprite('grass_night', 'DAVE&BAMB/grass_night', -700, 600);
	scaleObject('grass_night', 0.9, 0.9);

	addLuaSprite('sky_night', false);
	addLuaSprite('hills_night', false);
	addLuaSprite('grass bg_night', false);
	addLuaSprite('gate_night', false);
	addLuaSprite('grass_night', false);
end
end