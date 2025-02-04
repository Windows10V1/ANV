function onCreatePost()
    setPropertyFromClass("Main", "fpsVar.visible", "false")

    makeLuaSprite("time", "timeicon", 93, 513)
    addLuaSprite("time", true)
    setObjectCamera("time", "other")

    makeLuaSprite("miss", "missicon", 93, 543)
    addLuaSprite("miss", true)
    setObjectCamera("miss", "other")

    makeLuaSprite("acc", "accuracyicon", 93, 572)
    addLuaSprite("acc", true)
    setObjectCamera("acc", "other")

    makeLuaSprite("score", "scoreicon", 93, 600)
    addLuaSprite("score", true)
    setObjectCamera("score", "other")

    makeLuaSprite("combos", "comboicon", 93, 634)
    addLuaSprite("combos", true)
    setObjectCamera("combos", "other")

    makeLuaText("timetxt", "hiiii", 0, 130, 513)
    addLuaText("timetxt")
    setObjectCamera("timetxt", "other")

    makeLuaText("misstxt", "hiiii", 0, 130, 543)
    addLuaText("misstxt")
    setObjectCamera("misstxt", "other")

    makeLuaText("acctxt", "hiiii", 0, 130, 572)
    addLuaText("acctxt")
    setObjectCamera("acctxt", "other")

    makeLuaText("scoretxt", "hiiii", 0, 130, 600)
    addLuaText("scoretxt")
    setObjectCamera("scoretxt", "other")
    
    makeLuaText("combostxt", "hiiii", 0, 130, 630)
    addLuaText("combostxt")
    setObjectCamera("combostxt", "other")

    makeLuaText("botplay", "BOT", 0, 93, 490)
    addLuaText("botplay")
    setObjectCamera("botplay", "other")

    setProperty("timeTxt.visible", false)
    setProperty("timeBarBG.visible", false)
    setProperty("timeBar.visible", false)
    setProperty("healthBarBG.visible", false)
    setProperty("healthBar.visible", false)
    setProperty("iconP1.visible", false)
    setProperty("iconP2.visible", false)
    setProperty("scoreTxt.visible", false)

    setProperty("botplay.visible", botPlay)

    if downscroll then
        setProperty("time.y", getProperty("time.y") - 440)
        setProperty("timetxt.y", getProperty("timetxt.y") - 440)
        setProperty("miss.y", getProperty("miss.y") - 440)
        setProperty("misstxt.y", getProperty("misstxt.y") - 440)
        setProperty("acc.y", getProperty("acc.y") - 440)
        setProperty("acctxt.y", getProperty("acctxt.y") - 440)
        setProperty("score.y", getProperty("score.y") - 440)
        setProperty("scoretxt.y", getProperty("scoretxt.y") - 440)
        setProperty("combos.y", getProperty("combos.y") - 440)
        setProperty("combostxt.y", getProperty("combostxt.y") - 440)
        setProperty("botplay.y", getProperty("botplay.y") - 440)
    end

    runHaxeCode("ClientPrefs.comboOffset[0] = 10000")
    runHaxeCode("ClientPrefs.comboOffset[1] = 10000")
    runHaxeCode("ClientPrefs.hideHud = true")
end

local botsine = 0

local lastrecord = {0, "0", 0, 0}
local visibletime = {0, 0, 0, 0}

function onUpdate(elapsed)
    setProperty("botplayTxt.visible", false)
    setProperty("botplay.visible", botPlay)
    botsine = botsine + (elapsed * 180)
    setProperty("botplay.alpha", 1 - math.sin((math.pi * botsine) / 180))
    setTextString("timetxt", getTextString("timeTxt"))
    setTextString("misstxt", misses)
    setTextString("acctxt", floorDecimal(rating * 100, 2).."%")
    setTextString("scoretxt", score)
    setTextString("combostxt", getProperty("combo"))

    if lastrecord[1] ~= misses then
        visibletime[1] = 0
        doTweenAlpha("show1", "misstxt", 1, 0.25, "linear")
        doTweenAlpha("show12", "miss", 1, 0.25, "linear")
    end

    if lastrecord[2] ~= floorDecimal(rating * 100, 2).."%" then
        visibletime[2] = 0
        doTweenAlpha("show2", "acctxt", 1, 0.25, "linear")
        doTweenAlpha("show22", "acc", 1, 0.25, "linear")
    end

    if lastrecord[3] ~= score then
        visibletime[3] = 0
        doTweenAlpha("show3", "scoretxt", 1, 0.25, "linear")
        doTweenAlpha("show32", "score", 1, 0.25, "linear")
    end

    if lastrecord[4] ~= getProperty("combo") then
        visibletime[4] = 0
        doTweenAlpha("show4", "combostxt", 1, 0.25, "linear")
        doTweenAlpha("show42", "combos", 1, 0.25, "linear")
    end

    lastrecord[1] = misses
    lastrecord[2] = floorDecimal(rating * 100, 2).."%"
    lastrecord[3] = score
    lastrecord[4] = getProperty("combo")

    for i = 1, #lastrecord do
        switch({
            [1] = function ()
                if getProperty("misstxt.alpha") == 1 then
                    visibletime[1] = visibletime[1] + elapsed
                end
            end,
            [2] = function ()
                if getProperty("acctxt.alpha") == 1 then
                    visibletime[2] = visibletime[2] + elapsed
                end
            end,
            [3] = function ()
                if getProperty("scoretxt.alpha") == 1 then
                    visibletime[3] = visibletime[3] + elapsed
                end
            end,
            [4] = function ()
                if getProperty("combostxt.alpha") == 1 then
                    visibletime[4] = visibletime[4] + elapsed
                end
            end
        }, i)()
        if visibletime[i] > 3 then
            visibletime[i] = 0
            switch({
                [1] = function ()
                    doTweenAlpha("hide1", "misstxt", 0, 1, "linear")
                    doTweenAlpha("hide12", "miss", 0, 1, "linear")
                end,
                [2] = function ()
                    doTweenAlpha("hide2", "acctxt", 0, 1, "linear")
                    doTweenAlpha("hide22", "acc", 0, 1, "linear")
                end,
                [3] = function ()
                    doTweenAlpha("hide3", "scoretxt", 0, 1, "linear")
                    doTweenAlpha("hide32", "score", 0, 1, "linear")
                end,
                [4] = function ()
                    doTweenAlpha("hide4", "combostxt", 0, 1, "linear")
                    doTweenAlpha("hide42", "combos", 0, 1, "linear")
                end
            }, i)()
        end
    end
end

function switch(event, case)
    if event[case] then
        return event[case]
    end
end

function floorDecimal(value, decimals)
    if(decimals < 1) then
        return math.floor(value);
    end

    local tempMult = 1
    for i = 0, decimals do
        tempMult = tempMult * 10;
    end

    local newValue = math.floor(value * tempMult);
    return newValue / tempMult
end

function lerp(a, b, ratio)
    return a + ratio * (b - a)
end