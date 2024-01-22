local angleshit = 1;
local anglevar = 12;
function onBeatHit()
	if curBeat % 2 == 0 then
		angleshit = anglevar;
	else
		angleshit = -anglevar;
	end
	setGraphicSize('iconP1', angleshit*20)
	setGraphicSize('iconP2', angleshit*-20)
	setProperty('iconP1.angle',angleshit*6)
	setProperty('iconP2.angle',angleshit*-6)
	doTweenAngle('turn', 'iconP1', 0, stepCrochet*0.008, 'circOut')
	doTweenX('tuin', 'iconP1', -angleshit*16, crochet*0.002, 'linear')
	doTweenAngle('tt', 'iconP2', 0, stepCrochet*0.008, 'circOut')
	doTweenX('ttrn', 'iconP2', -angleshit*16, crochet*0.002, 'linear')
	end	