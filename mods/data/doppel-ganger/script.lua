function opponentNoteHit(id,data,type,sus)

        health = getProperty('health')
     if getProperty('health') > 0.1 then
        setProperty('health', health- 0.02);
 	end
end

local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'breakfast');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

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
