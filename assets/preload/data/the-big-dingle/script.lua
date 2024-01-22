function onBeatHit()
if curBeat == 280 then
makeLuaSprite('sludd', 'DAVE&BAMB/sludd', -260, 0);
setScrollFactor('sludd', 0.9, 0.9);
scaleObject('sludd', 2.2, 2.2);
	
makeLuaSprite('water', 'DAVE&BAMB/water', -280, 50);
setScrollFactor('water', 0.9, 0.9);
scaleObject('water', 2.2, 1.5);
	
makeLuaSprite('sand', 'DAVE&BAMB/sand', -260, -100);
setScrollFactor('sand', 0.9, 0.9);
scaleObject('sand', 1.8, 2.3);
	
makeAnimatedLuaSprite('crowd','DAVE&BAMB/crowd',-100,-100)addAnimationByPrefix('crowd', 'crowd', 'bop', 22, true);
setScrollFactor('crowd', 0.9, 0.9);
scaleObject('crowd', 1.3, 1.3);

addLuaSprite('sludd', false);
addLuaSprite('water', false);
addLuaSprite('sand', false);
addLuaSprite('crowd', false);
end
end