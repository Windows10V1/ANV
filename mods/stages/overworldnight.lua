function onCreate()
		
		makeAnimatedLuaSprite('overworldnight', 'overworldnight', -600, -500)
		addAnimationByPrefix('overworldnight', 'idle', 'overworldnight idle', 4, true)
		setLuaSpriteScrollFactor('overworldnight', 1, 1)
		addLuaSprite('overworldnight', false)
                scaleObject('overworldnight', 10, 10);

                close(true);
end