--configuraciones/setting/configurações--
local rasismo = '000000'
local idk = 5
------------
function onCreatePost()
	makeLuaSprite('miTula', '', 0, (downscroll and 625 or 105))
	makeGraphic('miTula', screenWidth, idk, rasismo)
	setObjectCamera('miTula', 'camHUD')
	setScrollFactor('miTula', 0, 0)
	addLuaSprite('miTula', true)
    for i = 0,7 do
        setPropertyFromGroup('strumLineNotes', i, 'visible', false)
    end
end