function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything
end

function onUpdatePost()

if getPropertyFromClass('flixel.FlxG','keys.justPressed.SEVEN') then

   loadSong('coder') -- type any song that you want
   setPropertyFromClass('PlayState', 'chartingMode', false)
end
end