local angleshit = 1;
local anglevar = 12;
function onBeatHit()
	if curBeat == 96 then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTES/NOTE_assets_Invisible'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)
		end
	end
end

function onBeatHit()
	if curBeat == 96 then
	setProperty('iconP1.antialiasing', false)
	health = getProperty('health')
	if health >= 0 then
		for i=0,4,1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTES/NOTE_assets_Invisible')
			setPropertyFromGroup('playerStrums', i, 'antialiasing', false)
		end
	end
end
end
end