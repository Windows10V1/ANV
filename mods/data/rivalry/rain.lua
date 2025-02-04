function onCreate()
	makeAnimatedLuaSprite('rain', 'rain', -200, 0);
	setLuaSpriteScrollFactor('rain', 0.3, 0.3);
	scaleObject('rain', 1.5, 1.5);

	addLuaSprite('rain', true);
	addAnimationByPrefix('rain', 'loop', 'rain idle', 50, true);
end