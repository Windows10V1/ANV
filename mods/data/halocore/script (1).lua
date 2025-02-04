function onCreatePost()
   makeLuaText("message", "Song by Comic Aaron (Made in FLM)", 500, 30, 50)
   setTextAlignment("message", "left")
   addLuaText("message")

   makeLuaText("engineText", "Halocore - Vs. Halo (PE 0.6.3)", 1000, 30, 100)
   setTextAlignment("engineText", "left")
   addLuaText("engineText")

   if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
       setProperty('message.y', 680)
       setProperty('engineText.y', 660)
   end
end