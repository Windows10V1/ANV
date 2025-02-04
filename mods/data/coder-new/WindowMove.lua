local Mechanic = true
local SineElap = 3
local DanceAmt = 3
function onUpdate(elapsed)
         windowy = getPropertyFromClass("openfl.Lib", "application.window.y")
         windowx = getPropertyFromClass("openfl.Lib", "application.window.x")
         setProperty('grpNoteSplashes.visible', true)
         SineElap = SineElap + (elapsed * DanceAmt)
         setPropertyFromClass('openfl.Lib', 'application.window.x', 45*math.sin(SineElap)+250)
end