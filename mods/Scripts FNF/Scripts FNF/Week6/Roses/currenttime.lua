local months = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'}
local timeTab = {}
--pasen cp luego hago uno que doxxe xd
function onCreatePost()	
    timeTab = os.date('*t')
    --debugPrint(timeTab)

    yepp = ""
    if timeTab.hour < 12 then yepp = 'A.M.' else yepp = 'P.M.' end
    part1 = months[timeTab.month] .. '. ' .. timeTab.day .. ' ' .. timeTab.year
    part2 = timeTab.hour .. ':'.. timeTab.min .. ' '.. yepp 

    makeLuaText('real', part1, 0, 0, 50);
    setObjectCamera("real", 'hud'); 
    setTextColor('real', '0xffffff')
    setTextSize('real', 30);
    setTextBorder('real', 2, '000000')
    addLuaText("real");
    setTextAlignment('real', 'left');

    makeLuaText('time', part2, 0, 0, 0);
    setObjectCamera("time", 'hud'); 
    setTextColor('time', '0xffffff')
    setTextSize('time', 30);
    setTextBorder('time', 2, '000000')
    addLuaText("time");
    setTextAlignment('time', 'left');

	setObjectCamera('real', 'hud')
	setObjectCamera('time', 'hud')
end

function onUpdate()
    timeTab = os.date('*t')
    yepp = ""
    if timeTab.hour < 12 then yepp = 'A.M.' else yepp = 'P.M.' end
    part1 = months[timeTab.month] .. '. ' .. timeTab.day .. ' ' .. timeTab.year
    part2 = timeTab.hour .. ':'.. minCheck() .. ' '.. yepp 

    setTextString('real', part1)
    setTextString('time', part2)
end

function minCheck()
    if string.len(timeTab.min) < 2 then
        if tonumber(timeTab.min) < 10 then 
            return '0'..timeTab.min
        else
            return timeTab.min
        end
    else
        return timeTab.min
    end
end