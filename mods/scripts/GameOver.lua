function onCreate()
	-- CHARACTER
	setPropertyFromClass('GameOverSubstate', 'characterName', 'Comic Aaron');
	
	--SOUNDS
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --file goes inside sounds/ folder
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'ANV_-_Game_Over'); --file goes inside music/ folder
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'ANV_-_Sound_Effects_Game_Over_Retry'); --file goes inside music/ folder
end