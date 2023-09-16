function onBeatHit()
if curBeat == 208 then
makeLuaSprite('BlackVoid','OTHER/BlackVoid',-100, 200)
addLuaSprite('BlackVoid',false)

makeLuaSprite('BlackVoid','OTHER/BlackVoid',-950,-200)
addLuaSprite('BlackVoid',false)
scaleObject('BlackVoid', 1.3, 1.3);

makeLuaSprite('BlackVoid','OTHER/BlackVoid',-500, -200)
addLuaSprite('BlackVoid',false)
scaleObject('BlackVoid', 1.3, 1.3);
end
end