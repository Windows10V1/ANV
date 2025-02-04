function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything
end

function onUpdatePost()

if getPropertyFromClass('flixel.FlxG','keys.justPressed.SEVEN') then

  debugPrint("anytext") -- type it :)
end
end