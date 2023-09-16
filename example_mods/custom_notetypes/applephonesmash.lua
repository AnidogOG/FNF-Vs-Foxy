function onCreate()
-- starting code bullstuff
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'applephonesmash' then 
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTES/NOTE_phone'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end


--                        left     down     up       right
local breakanimations = {"smash1", "smash2", "smash1", "smash2"}
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'applephonesmash' then
		if noteData == 0 then
			characterPlayAnim('dad','smash1', true)
		end
		if noteData == 1 then
			characterPlayAnim('dad','smash2', true)
		end
		if noteData == 2 then
			characterPlayAnim('dad','smash1', true)
		end
		if noteData == 3 then
			characterPlayAnim('dad','smash2', true)
		end
	end
end