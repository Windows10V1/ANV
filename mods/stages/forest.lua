function onCreate()
	-- background shit
	makeLuaSprite('forestback', 'forestback', -800, 0);
	setLuaSpriteScrollFactor('forestback', 1.1, 1.1);
	scaleObject('forestback', 7, 7);
        
	makeLuaSprite('forestfront', 'forestfront', -800, -100);
	setLuaSpriteScrollFactor('forestfront', 0.9, 0.9);
	scaleObject('forestfront', 7, 7);

	addLuaSprite('forestback', false);
	addLuaSprite('forestfront', false);

end