function onCreate()
		
		makeAnimatedLuaSprite('codevoidback', 'codevoidback', -500, -400)
		addAnimationByPrefix('codevoidback', 'codevoidback', 'codevoidanim', 24, true)
		setLuaSpriteScrollFactor('codevoidback', 0.9, 0.9)
                scaleObject('codevoidback', 5, 5);
                addLuaSprite('codevoidback', false)

	        makeLuaSprite('codevoidfront', 'codevoidfront', 200, 50);
	        setLuaSpriteScrollFactor('codevoidfront', 1.1, 1.1);
	        scaleObject('codevoidfront', 3, 3);
	        addLuaSprite('codevoidfront', false);

                close(true);
end