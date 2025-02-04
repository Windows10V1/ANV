function onCreate()
	-- background shit
	makeLuaSprite('voidback', 'voidback', -600, -1000);
	setScrollFactor('voidback', 1.1, 1.1);
	scaleObject('voidback', 5, 5);

	makeLuaSprite('voidfront', 'voidfront', -600, -700);
	setScrollFactor('voidfront', 0.9, 0.9);
	scaleObject('voidfront', 5, 5);

	addLuaSprite('voidback', false);
	addLuaSprite('voidfront', false);

end