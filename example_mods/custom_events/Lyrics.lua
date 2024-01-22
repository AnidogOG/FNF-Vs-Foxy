lyricNumber1 = 0

function onEvent(name, value1, value2)
    local var string = (value1)
    local var color = (value2)

    LyricX = getProperty('healthBarBG.x') - 150
    LyricY = getProperty('healthBarBG.y') + 40

    if name == 'Lyrics' then
        lyricNumber1 = lyricNumber1 + 1
        lyricNumber2 = lyricNumber1 - 1
        lyricNumber3 = lyricNumber1 - 2
        lyricNumber4 = lyricNumber1 - 3

        makeLuaText(lyricNumber1, '<insert_lyrics_here>', 900, LyricX, LyricY)
        addLuaText(lyricNumber1)
        setTextString(lyricNumber1, '' .. string)
        setTextFont(lyricNumber1, 'vcr.ttf')
        setTextColor(lyricNumber1, '' .. color)
        setTextSize(lyricNumber1, 40);
        setTextAlignment(lyricNumber1, 'center')
        setObjectCamera(lyricNumber1, 'hud');

        doTweenY(lyricNumber1, lyricNumber1, 500, 0.5, 'CircOut')
        doTweenY(lyricNumber2, lyricNumber2, 450, 0.5, 'CircOut')
        doTweenY(lyricNumber3, lyricNumber3, 400, 0.5, 'CircOut')

        setProperty(lyricNumber2 .. '.alpha', 0.5)
        setProperty(lyricNumber3 .. '.alpha', 0.25)
        setProperty(lyricNumber4 .. '.visible', false)
    end

    if value1 == '/delete' then
        removeLuaText(lyricNumber1, true)
        removeLuaText(lyricNumber2, true)
        removeLuaText(lyricNumber3, true)
        removeLuaText(lyricNumber4, true)
    end
end