function onCreate()
	-- background shit
	makeLuaSprite('thecoolestmcworldback', 'thecoolestmcworldback', -200, 0);
	setScrollFactor('thecoolestmcworldback', 0.9, 0.9);
	scaleObject('thecoolestmcworldback', 2, 2);

	makeLuaSprite('thecoolestmcworldfront', 'thecoolestmcworldfront', -200, 0);
	setScrollFactor('thecoolestmcworldfront', 1.1, 1.1);
	scaleObject('thecoolestmcworldfront', 2, 2);

	addLuaSprite('thecoolestmcworldback', false);
        addLuaSprite('thecoolestmcworldfront', false);
end