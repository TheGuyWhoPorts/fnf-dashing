function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.01);
    end
end
--Place in Script Folders!

function onCreatePost()
	setProperty('timeBar.color', getIconColor('dad'))
end

function onEvent(name, value1, value2)
	if string.lower(name) == "change character" then
		if tonumber(value1) == 1 then
			setProperty('timeBar.color', getIconColor('dad'))
		end
	end
end

function getIconColor(chr)
	local chr = chr or "dad"
	return getColorFromHex(rgbToHex(getProperty(chr .. ".healthColorArray")))
end

function rgbToHex(array)
	return string.format('%.2x%.2x%.2x', array[1], array[2], array[3])
end