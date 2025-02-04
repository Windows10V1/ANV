local fuckcrochetallmyhomiesusemeth = 0 --or it was math?
local defcdsprite =  {"go", "set", "ready"}
local defcdpixelsprite = {"pixelUI/date-pixel", "pixelUI/set-pixel", "pixelUI/ready-pixel"}

function onCreatePost()
	for intro = 1, 3 do
		if isPixelStage then
			makeLuaSprite('introshit'..intro, defcdpixelsprite[intro], -6900, -6900)
			scaleLuaSprite('introshit'..intro, 2, 2)
			setProperty('introshit'..intro..'.antialiasing', false)
			scaleLuaSprite('introshit'..intro, 6, 6)

		else
		
			makeLuaSprite('introshit'..intro, defcdsprite[intro], -6900, -6900)
		end
		setObjectCamera('introshit'..intro, 'camHUD')
		addLuaSprite('introshit'..intro, true)
	end
	fuckcrochetallmyhomiesusemeth = (1 / ((bpm) / 60))
end
-- kevin if you re reading this i swear this one doesnt break at 1 line (i think?)
function onUpdate()
	if stoprightthereyoucriminalscum then
		setPropertyFromClass('Conductor', 'songPosition',currentpausepos)
		setPropertyFromClass('flixel.FlxG', 'sound.music.time',currentpausepos)
		setProperty('vocals.time',currentpausepos)
		--DO   NOT   DELETE   THIS--
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
		--THIS--
	end
end

function onPause()
	if curBeat > 0	then
		stoprightthereyoucriminalscum = true
		currentpausepos = getPropertyFromClass('Conductor', 'songPosition')
	end
end

function onResume()
	if curBeat > 1 then
		if stoprightthereyoucriminalscum then
			pausecurcountdown = 4
			runTimer('pausecountdown', fuckcrochetallmyhomiesusemeth)
		end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'pausecountdown' then
		if pausecurcountdown > 0 then	
			screenCenter('introshit'..(pausecurcountdown+1), 'xy')
			doTweenAlpha('leintro'..pausecurcountdown,'introshit'..(pausecurcountdown+1), 0 , fuckcrochetallmyhomiesusemeth)
			if isPixelStage then 
				playSound('intro'..(pausecurcountdown)..'-pixel', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			else
				playSound('intro'..(pausecurcountdown), getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			end
		end
				
		if pausecurcountdown == 4 then			
			for intro = 1, 3 do
				setProperty('introshit'..intro..'.x' , 6900)
				setProperty('introshit'..intro..'.alpha' , 1)
			end
		end
		
		if pausecurcountdown == 0 then	
			if isPixelStage then 
				playSound('introGo-pixel', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			else
				playSound('introGo', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			end
			stoprightthereyoucriminalscum = false
			setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1) --this is really dumb, for some reason using the save volume just fucks it up--
			setProperty('vocals.volume', getPropertyFromClass('flixel.FlxG', 'save.data.volume'))
			screenCenter('introshit1', 'xy')
			doTweenAlpha('GO','introshit1', 0 , fuckcrochetallmyhomiesusemeth)
		end
			if pausecurcountdown ~= 0 then	
		runTimer('pausecountdown', fuckcrochetallmyhomiesusemeth)
			pausecurcountdown = pausecurcountdown - 1
		end
	end
end
-- i guess i have to put credits uh? well this was made by the certified profesional retarded teniente mantequilla (yes i do my scripts alone now)