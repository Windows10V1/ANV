function onCreate()
	-- background shit
	makeLuaSprite('sundownscaledback', 'sundownscaledback', -1000, -1700);
	setScrollFactor('sundownscaledback', 1.1, 1.1);
	scaleObject('sundownscaledback', 2, 2);
        
	makeLuaSprite('sundownscaledfront', 'sundownscaledfront', -1000, -1700);
	setScrollFactor('sundownscaledfront', 0.9, 0.9);
	scaleObject('sundownscaledfront', 2, 2);

	addLuaSprite('sundownscaledback', false);
	addLuaSprite('sundownscaledfront', false);

end