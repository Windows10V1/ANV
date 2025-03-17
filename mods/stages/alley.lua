function onCreate()
	-- background shit
	makeLuaSprite('alleyback', 'alleyback', -500, -300);
	setLuaSpriteScrollFactor('alleyback', 0.9, 0.9);
        scaleObject('alleyback', 6, 6);
	
	makeLuaSprite('alleyfront', 'alleyfront', -500, -150);
	setLuaSpriteScrollFactor('alleyfront', 0.9, 0.9);
	scaleObject('alleyfront', 5, 5);

	addLuaSprite('alleyback', false);
	addLuaSprite('alleyfront', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end