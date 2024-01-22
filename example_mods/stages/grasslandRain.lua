function onCreate()
	makeLuaSprite('skydark', 'FOXY/skydark', -600, -200);
	setScrollFactor('skydark', 0.9, 0.9);
	
	makeLuaSprite('grounddark', 'FOXY/grounddark', -600, -200);
	setScrollFactor('grounddark', 0.9, 0.9);
	scaleObject('grounddark', 1.1, 1.1);

	makeLuaSprite('cloudsdark', 'FOXY/cloudsdark', -600, -200);
	setScrollFactor('cloudsdark', 0.9, 0.9);
	scaleObject('cloudsdark', 0.9, 0.9);
		
	makeAnimatedLuaSprite('rain', 'FOXY/rain', -315, 60)
	addAnimationByPrefix('rain','rain','rain',16,true)
	objectPlayAnimation('rain','rain',false)
	scaleObject('rain', 1.6, 1.6)

	addLuaSprite('skydark', false);
	addLuaSprite('grounddark', false);
	addLuaSprite('cloudsdark', false);
	addLuaSprite('rain', true);
end