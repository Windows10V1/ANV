function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything
end

function onUpdatePost()

if getPropertyFromClass('flixel.FlxG','keys.justPressed.SEVEN') then

  debugPrint("ERR. You do not have permissions from Windows10V") -- type it :)
end
end