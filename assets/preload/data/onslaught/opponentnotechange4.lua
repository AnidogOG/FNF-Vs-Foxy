local angleshit = 1;
local anglevar = 12;
function onBeatHit()
	if curBeat == 352 then
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTES/NOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)
		end
	end
end

function onBeatHit()
	if curBeat == 352 then
	setProperty('iconP2.antialiasing', false)
	health = getProperty('health')
	if health >= 0 then
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTES/NOTE_assets')
			setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
		end
	end
end
end
end