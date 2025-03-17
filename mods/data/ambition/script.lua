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

playVideo = true;
playDialogue = true;

function onStartCountdown()
	if isStoryMode and not seenCutscene then
		if playVideo then --Video cutscene plays first
			startVideo('ambitioncutscene'); --Play video file from "videos/" folder
			playVideo = false;
			return Function_Stop; --Prevents the song from starting naturally
		elseif playDialogue then --Once the video ends it calls onStartCountdown again. Play dialogue this time
			startDialogue('dialogue', 'breakfast'); --"breakfast" is the dialogue music file from "music/" folder
			playDialogue = false;
			return Function_Stop; --Prevents the song from starting naturally
		end
	end
	return Function_Continue; --Played video and dialogue, now the song can start normally
end

function onCreatePost()
   makeLuaText("message", "Song by Comic Aaron (Made in FLM)", 500, 30, 50)
   setTextAlignment("message", "left")
   addLuaText("message")

   makeLuaText("engineText", "Ambition - Vs. Anthony (PE 0.6.3)", 1000, 30, 100)
   setTextAlignment("engineText", "left")
   addLuaText("engineText")

   if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
       setProperty('message.y', 680)
       setProperty('engineText.y', 660)
   end
end

function onCreate()
    setPropertyFromClass('GameOverSubstate', 'characterName', 'regularaaron');
    setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'regularAaronLossSFX');
    setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'regularAaronLoop');
    setPropertyFromClass('GameOverSubstate', 'endSoundName', 'regularAaronConfirm');
end