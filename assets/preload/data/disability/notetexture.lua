local angleshit = 1;
local anglevar = 12;
function onStartCountdown()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTES/NOTE_assets_Gapple'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'antialiasing', false)
		end
	end
end

function onUpdate(elapsed)
	setProperty('iconP2.antialiasing', false)
	health = getProperty('health')
	if health >= 0 then
		for i=0,4,1 do
			setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTES/NOTE_assets_Gapple')
			setPropertyFromGroup('opponentStrums', i, 'antialiasing', false)
		end
	end
end