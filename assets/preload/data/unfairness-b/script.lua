function onStartCountdown()
setProperty('health', 2)
end

function onUpdate(elapsed)
setPropertyFromClass('ClientPrefs', 'ghostTapping', false)
if ghostTapping then
endSong()
end
setPropertyFromClass('ClientPrefs', 'downScroll', true)
function opponentNoteHit(id, direction, noteType, isSustainNote)
cameraShake(game, 0.015, 0.2)
cameraSetTarget('dad')
characterPlayAnim('gf', 'scared', true)
doTweenZoom('camerazoom','camGame',1.1,0.2,'quadInOut')
setProperty('health', getProperty('health') - 1 * ((getProperty('health')/22))/6)
end
function goodNoteHit(id, direction, noteType, isSustainNote)
cameraSetTarget('boyfriend')
end
end

function onGameOver()
endSong()
setPropertyFromClass('ClientPrefs', 'framerate', 0)
end