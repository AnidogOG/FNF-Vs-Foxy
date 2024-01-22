function onCreate()
	makeLuaSprite('sky_dingle', 'DAVE&BAMB/sky_dingle', -260, 0);
	setScrollFactor('sky_dingle', 0.9, 0.9);
	scaleObject('sky_dingle', 2.2, 2.2);
	
	makeLuaSprite('city', 'DAVE&BAMB/city', -260, -150);
	setScrollFactor('city', 0.9, 0.9);
	scaleObject('city', 2.2, 2.2);
	
	makeLuaSprite('behindTrain', 'DAVE&BAMB/behindTrain', -280, 40);
	setScrollFactor('behindTrain', 0.9, 0.9);
	scaleObject('behindTrain', 1.5, 1.5);
	
	makeLuaSprite('street', 'DAVE&BAMB/street', -280, -50);
	setScrollFactor('street', 0.9, 0.9);
	scaleObject('street', 2.2, 2.2);

	addLuaSprite('sky_dingle', false);
	addLuaSprite('city', false);
	addLuaSprite('behindTrain', false);
	addLuaSprite('street', false);
end