function onCreate()
		
		makeAnimatedLuaSprite('skygray', 'skygray', -600, -700)
		addAnimationByPrefix('skygray', 'idle', 'sky gray idle', 4, true)
		setLuaSpriteScrollFactor('skygray', 1.1, 1.1)
		addLuaSprite('skygray', false)

                close(true);
end