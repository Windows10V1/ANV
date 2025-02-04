function opponentNoteHit(id,data,type,sus)
	triggerEvent('Screen Shake','1, 0.02','0.08, 0.02')

        health = getProperty('health')
     if getProperty('health') > 0.1 then
        setProperty('health', health- 0.01);
 	end
end

function onStartCountdown(elapsed)

	doTweenAngle('turn', 'camGame', 1.5, crochet/300, 'sineInOut')
	doTweenAngle('camturn', 'camHUD', -1.5, crochet/300, 'sineInOut')

end

function onTweenCompleted(t)
	if t == 'turn' then
		doTweenAngle('turn1', 'camGame', -1.5, crochet/300, 'sineInOut')
		doTweenAngle('camturn1', 'camHUD', 1.5, crochet/300, 'sineInOut')
	end
	if t == 'turn1' then
		doTweenAngle('turn', 'camGame', 1.5, crochet/300, 'sineInOut')
		doTweenAngle('camturn', 'camHUD', -1.5, crochet/300, 'sineInOut')
	end
end

local defaultHudX = 0
local camHudAngle = 0

function onUpdatePost()
setProperty('iconP2.origin.y', 30)
end


function onBeatHit()

setProperty('iconP2.angle',12)
setProperty('iconP1.angle',-12)
setProperty('iconP1.scale.y', 1.05)
setProperty('iconP2.scale.y', 1.05)
setProperty('iconP1.scale.x', 1.05)
setProperty('iconP2.scale.x', 1.05)

doTweenAngle('iconTween1','iconP1',0,crochet/1000,'cubeOut')
doTweenAngle('iconTween2','iconP2',0,crochet/1000,'cubeOut')
end
