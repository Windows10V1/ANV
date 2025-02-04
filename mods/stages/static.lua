function onCreate()
		
		makeAnimatedLuaSprite('static', 'static', -600, -300)
		addAnimationByPrefix('static', 'static', 'static static', 48, true)
		setLuaSpriteScrollFactor('static', 1.1, 1.1)
                scaleObject('static', 10, 10);
		addLuaSprite('static', false)

                close(true);
end