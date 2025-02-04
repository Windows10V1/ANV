function onCreate()
	-- background shit
	makeLuaSprite('sunback', 'sunback', -1000, -1700);
	setScrollFactor('sunback', 1.1, 1.1);
	scaleObject('sunback', 4, 4);
        
	makeLuaSprite('sunfront', 'sunfront', -1000, -1700);
	setScrollFactor('sunfront', 0.9, 0.9);
	scaleObject('sunfront', 4, 4);

	addLuaSprite('sunback', false);
	addLuaSprite('sunfront', false);

end