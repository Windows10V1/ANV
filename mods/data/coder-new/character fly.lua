function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/500)*(bpm/160)

    doTweenY(dadTweenY, 'dad', 20-40*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

end
