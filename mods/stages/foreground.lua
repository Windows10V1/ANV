function onCreate()
	-- background shit
	makeLuaSprite('foregroundback', 'foregroundback', -900, -500);
	setScrollFactor('foregroundback', 1.1, 1.1);
	scaleObject('foregroundback', 6, 6);
        
	makeLuaSprite('foregroundfront', 'foregroundfront', -900, -500);
	setScrollFactor('foregroundfront', 0.9, 0.9);
	scaleObject('foregroundfront', 6, 6);

	addLuaSprite('foregroundback', false);
	addLuaSprite('foregroundfront', false);

end