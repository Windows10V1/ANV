function onCreate()
	-- background shit
	makeLuaSprite('thecoolestmcworldback', 'thecoolestmcworldback', -200, 0);
	setScrollFactor('thecoolestmcworldback', 0.9, 0.9);
	scaleObject('thecoolestmcworldback', 2, 2);

	makeLuaSprite('thecoolestmcworldfront', 'thecoolestmcworldfront', 0, 100);
	setScrollFactor('thecoolestmcworldfront', 1.1, 1.1);
	scaleObject('thecoolestmcworldfront', 1.8, 1.8);

	addLuaSprite('thecoolestmcworldback', false);
        addLuaSprite('thecoolestmcworldfront', false);
end