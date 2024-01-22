local angley = 0
function onUpdate(elapsed)
	started = true
	songPos = getSongPosition()
	local currentBeat = (songPos/5000)*(curBpm/120)
end
function onBeatHit()
	if curBeat % 2 == 0 then
	angley = angley + 4075
		noteTweenAngle('swoosh0', 0, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh1', 1, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh2', 2, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh3', 3, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh4', 4, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh5', 5, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh6', 6, angley + 2075, 3, 'cubeInOut')
		noteTweenAngle('swoosh7', 7, angley + 2075, 3, 'cubeInOut')
	end
end