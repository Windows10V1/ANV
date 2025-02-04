function onCreate()
	-- background shit
	makeLuaSprite('nightback', 'nightback', -1000, -1700);
	setScrollFactor('nightback', 1.1, 1.1);
	scaleObject('nightback', 4, 4);
        
	makeLuaSprite('nightfront', 'nightfront', -1000, -1700);
	setScrollFactor('nightfront', 0.9, 0.9);
	scaleObject('nightfront', 4, 4);

	addLuaSprite('nightback', false);
	addLuaSprite('nightfront', false);

end