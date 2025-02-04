function opponentNoteHit(id,data,type,sus)
	triggerEvent('Screen Shake','0.08, 0.01','0, 0')

        health = getProperty('health')
     if getProperty('health') > 0.03 then
        setProperty('health', health- 0.03);
 	end
end
