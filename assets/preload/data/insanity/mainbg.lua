function onCreate()
	makeLuaSprite('sky', 'DAVE&BAMB/sky', -580, -100);
	scaleObject('sky', 0.9, 0.9);

	makeLuaSprite('hills', 'DAVE&BAMB/hills', -580, 20);
	scaleObject('hills', 0.9, 0.9);
	
	makeLuaSprite('grass bg', 'DAVE&BAMB/grass bg', -780, 600);
	scaleObject('grass bg', 0.9, 0.9);

	makeLuaSprite('gate', 'DAVE&BAMB/gate', -580, 370);
	scaleObject('gate', 0.9, 0.9);
	
	makeLuaSprite('grass', 'DAVE&BAMB/grass', -680, 600);
	scaleObject('grass', 0.9, 0.9);

	addLuaSprite('sky', false);
	addLuaSprite('hills', false);
	addLuaSprite('grass bg', false);
	addLuaSprite('gate', false);
	addLuaSprite('grass', false);
end