function onCreate()
    makeLuaText('space', 'Press [SPACE] to Start', 800, 635);
    setTextSize('space', '30')
    addLuaText('space', true)

    makeLuaText('t', 'Press [T] to change NoteSkin', 0, 660);
    setTextSize('t', '20')
    setTextAlignment('t', 'middle')
    addLuaText('t', true)

    makeLuaText('y', 'Press [Y] to Check Note Splashes', 0, 635);
    setTextSize('y', '20')
    setTextAlignment('y', 'middle')
    addLuaText('y', true)

    makeLuaText('f', 'Press [F] to change NoteSkin', 0, 660);
    setTextSize('f', '20')
    setTextAlignment('f', 'middle')
    addLuaText('f', true)

    makeLuaText('g', 'Press [G] to Check Note Splashes', 0, 635);
    setTextSize('g', '20')
    setTextAlignment('g', 'middle')
    addLuaText('g', true)

    -- Warn --

    makeLuaText('p', 'Prees [P] to Change into Pixel Note', 0, 635)
    setTextSize('p', '18')
    addLuaText('p', true)

    makeLuaText('warn', 'This only works in Pixel Stages', 0, 655)
    setTextSize('warn', '19')
    setTextColor('warn', 'ff0000')
    addLuaText('warn', true)

    makeLuaText('warn2', 'Are you sure you want to proceed?', 0, 646)
    setTextSize('warn2', '19')
    setTextColor('warn2', 'ff0000')
    addLuaText('warn2', true)

    makeLuaText('question', '[K] or [L]', 0, 735)
    setTextSize('question', '30')
    setTextColor('question', 'ff0000')
    addLuaText('question', true)

    makeLuaText('sidenote', 'SideNote: [K] = Normal and [L] = Pixel', 0, 655)
    setTextSize('sidenote', '16')
    setTextColor('sidenote', 'ff0000')
    addLuaText('sidenote', true)

    -- Setting --

    makeLuaText('h', 'Press [H] to Change BG to White', 0, 230);
    setTextSize('h', '20')
    addLuaText('h', true)

    makeLuaText('z', 'Press [Z] to Get the NoteSkin in the stage', 0, 228);
    setTextSize('z', '16')
    addLuaText('z', true)

    makeLuaText('i', 'Press [I] to Enable Hitsounds', 0, 228);
    setTextSize('i', '16')
    addLuaText('i', true)

    -- Background --

    makeLuaSprite('blacklol', nil, 630, 0)
    makeGraphic('blacklol', 400, 1000, '000000')
    setObjectCamera('blacklol', 'camHUD')
    setProperty('blacklol.alpha', 0.3)
    addLuaSprite('blacklol')

    makeLuaSprite('whitelol', nil, 630, 0)
    makeGraphic('whitelol', 400, 1000, 'ffffff')
    setObjectCamera('whitelol', 'camHUD')
    setProperty('whitelol.alpha', 0.3)
    addLuaSprite('whitelol')

    -- NoteSkin Background -- 

    makeLuaSprite('playerlol', nil, 220, 100)
    makeGraphic('playerlol', 400, 100, '000000')
    setObjectCamera('playerlol', 'camHUD')
    setProperty('playerlol.alpha', 0.3)
    addLuaSprite('playerlol')

    makeLuaSprite('opponentlol', nil, 220, 250)
    makeGraphic('opponentlol', 400, 100, '000000')
    setObjectCamera('opponentlol', 'camHUD')
    setProperty('opponentlol.alpha', 0.3)
    addLuaSprite('opponentlol')

    makeLuaSprite('playerwhitelol', nil, 220, 100)
    makeGraphic('playerwhitelol', 400, 100, 'ffffff')
    setObjectCamera('playerwhitelol', 'camHUD')
    setProperty('playerwhitelol.alpha', 0.3)
    addLuaSprite('playerwhitelol')

    makeLuaSprite('opponentwhitelol', nil, 220, 250)
    makeGraphic('opponentwhitelol', 400, 100, 'ffffff')
    setObjectCamera('opponentwhitelol', 'camHUD')
    setProperty('opponentwhitelol.alpha', 0.3)
    addLuaSprite('opponentwhitelol')

    -- Setting BG --

    makeLuaSprite('optionlol', nil, 220, 400)
    makeGraphic('optionlol', 400, 350, '000000')
    setObjectCamera('optionlol', 'camHUD')
    setProperty('optionlol.alpha', 0.3)
    addLuaSprite('optionlol')

    makeLuaSprite('optionwhitelol', nil, 220, 400)
    makeGraphic('optionwhitelol', 400, 350, 'ffffff')
    setObjectCamera('optionwhitelol', 'camHUD')
    setProperty('optionwhitelol.alpha', 0.3)
    addLuaSprite('optionwhitelol')

    -- Text Thingy --

    makeLuaText('pl', 'Player', 390, 80)
    setTextSize('pl', '30')
    setObjectCamera('pl', 'camHUD')
    setTextColor('pl', '31b1d1')
    addLuaText('pl', true)

    makeLuaText('op', 'Opponent', 425, 80)
    setTextSize('op', '30')
    setObjectCamera('op', 'camHUD')
    setTextColor('op', 'af66ce')
    addLuaText('op', true)

    makeLuaText('se', 'Settings', 425, 80)
    setTextSize('se', '30')
    setObjectCamera('se', 'camHUD')
    addLuaText('se', true)

    -- Note Text --

    makeLuaText('Note', 'NoteSkin: Normal', 0, 710)
    setTextSize('Note', '25')
    setTextAlignment('Note', 'middle')
    addLuaText('Note', true)

    makeLuaText('NoteDAD', 'NoteSkin: Normal', 0, 710)
    setTextSize('NoteDAD', '25')
    setTextAlignment('NoteDAD', 'middle')
    addLuaText('NoteDAD', true)

    -- Note Preview --

    PreX = 255
    PreY = 90

    PreDADY = 240

    makeLuaSprite('preview0', 'noteseen/normal notes', PreX, PreY)
    setObjectCamera('preview0', 'camHUD')
    scaleObject('preview0', 0.5, 0.5)
    addLuaSprite('preview0', true)

    makeLuaSprite('preview1', 'noteseen/tabi notes', PreX, PreY)
    setObjectCamera('preview1', 'camHUD')
    scaleObject('preview1', 0.5, 0.5)
    addLuaSprite('preview1', true)

    makeLuaSprite('preview2', 'noteseen/majin notes', PreX, PreY)
    setObjectCamera('preview2', 'camHUD')
    scaleObject('preview2', 0.5, 0.5)
    addLuaSprite('preview2', true)

    makeLuaSprite('preview3', 'noteseen/creepy notes', PreX, PreY)
    setObjectCamera('preview3', 'camHUD')
    scaleObject('preview3', 0.5, 0.5)
    addLuaSprite('preview3', true)

    makeLuaSprite('previewDAD0', 'noteseen/normal notes', PreX, PreDADY)
    setObjectCamera('previewDAD0', 'camHUD')
    scaleObject('previewDAD0', 0.5, 0.5)
    addLuaSprite('previewDAD0', true)

    makeLuaSprite('previewDAD1', 'noteseen/tabi notes', PreX, PreDADY)
    setObjectCamera('previewDAD1', 'camHUD')
    scaleObject('previewDAD1', 0.5, 0.5)
    addLuaSprite('previewDAD1', true)

    makeLuaSprite('previewDAD2', 'noteseen/majin notes', PreX, PreDADY)
    setObjectCamera('previewDAD2', 'camHUD')
    scaleObject('previewDAD2', 0.5, 0.5)
    addLuaSprite('previewDAD2', true)

    makeLuaSprite('previewDAD3', 'noteseen/creepy notes', PreX, PreDADY)
    setObjectCamera('previewDAD3', 'camHUD')
    scaleObject('previewDAD3', 0.5, 0.5)
    addLuaSprite('previewDAD3', true)

    -- Pixel --

    makeLuaSprite('pixel1', 'pixelUI/noteseen/pixel notes', PreX, PreY)
    setObjectCamera('pixel1', 'camHUD')
    scaleObject('pixel1', 0.5, 0.5)
    addLuaSprite('pixel1', true)

    makeLuaSprite('pixel2', 'pixelUI/noteseen/NES notes', PreX, PreY)
    setObjectCamera('pixel2', 'camHUD')
    scaleObject('pixel2', 0.5, 0.5)
    addLuaSprite('pixel2', true)

    makeLuaSprite('pixelDAD1', 'pixelUI/noteseen/pixel notes', PreX, PreDADY)
    setObjectCamera('pixelDAD1', 'camHUD')
    scaleObject('pixelDAD1', 0.5, 0.5)
    addLuaSprite('pixelDAD1', true)

    makeLuaSprite('pixelDAD2', 'pixelUI/noteseen/NES notes', PreX, PreDADY)
    setObjectCamera('pixelDAD2', 'camHUD')
    scaleObject('pixelDAD2', 0.5, 0.5)
    addLuaSprite('pixelDAD2', true)

    -- Splash preview --

    makeAnimatedLuaSprite('Splashpre0', 'noteSplashes', PreX, PreY)
    setObjectCamera('Splashpre0', 'camHUD')
    scaleLuaSprite('Splashpre0', 0.5, 0.5)
    addLuaSprite('Splashpre0', true)

    makeAnimatedLuaSprite('Splashpre1', 'notesplash/Majin_Splashes', PreX, PreY)
    setObjectCamera('Splashpre1', 'camHUD')
    scaleLuaSprite('Splashpre1', 0.5, 0.5)
    addLuaSprite('Splashpre1', true)

    makeAnimatedLuaSprite('Splashpre2', 'notesplash/creepySplashes', PreX, PreY)
    setObjectCamera('Splashpre2', 'camHUD')
    scaleLuaSprite('Splashpre2', 0.5, 0.5)
    addLuaSprite('Splashpre2', true)

    makeAnimatedLuaSprite('SplashpreDAD0', 'noteSplashes', PreX, PreDADY)
    setObjectCamera('SplashpreDAD0', 'camHUD')
    scaleLuaSprite('SplashpreDAD0', 0.5, 0.5)
    addLuaSprite('SplashpreDAD0', true)

    makeAnimatedLuaSprite('SplashpreDAD1', 'notesplash/Majin_Splashes', PreX, PreDADY)
    setObjectCamera('SplashpreDAD1', 'camHUD')
    scaleLuaSprite('SplashpreDAD1', 0.5, 0.5)
    addLuaSprite('SplashpreDAD1', true)

    makeAnimatedLuaSprite('SplashpreDAD2', 'notesplash/creepySplashes', PreX, PreDADY)
    setObjectCamera('SplashpreDAD2', 'camHUD')
    scaleLuaSprite('SplashpreDAD2', 0.5, 0.5)
    addLuaSprite('SplashpreDAD2', true)

    -- Other --

    makeLuaText('esc', 'Press [ESCAPE] to Exit the song', 0, 655);
    setTextSize('esc', '18')
    setTextColor('esc', 'ff0000')
    addLuaText('esc', true)
    
    -- Funny --

    onTweenXY()
    onVisibilty()
    onPrecaching()
end  

function onCreatePost()
    setProperty('scoreTxt.alpha', 0)
	setProperty('healthBar.alpha', 0)
    setProperty('healthBarBG.alpha', 0)
	setProperty('iconP1.alpha', 0)
	setProperty('iconP2.alpha', 0)   
end    

local Activate = true;
local allowCountdown = false;
function onStartCountdown()
    if not allowCountdown then -- Block the first countdown
        allowCountdown = true; 
        if Activate == true and not seenCutscene then
            playMusic('offsetSong', 0.3, true)
        end
        if Activate == false then
            soundFadeOut('offsetSong', 0.1, 0)
        end   
        return Function_Stop; 
    end 
    return Function_Continue;
end  

local Visible = true;
function onSongStart()
    Activate = false;
    Visible = false;

    onRemove() 
    onTweenAlpha()
    onRemove()
end 

local AnnoyingSound = false;
function goodNoteHit(id, direction, noteType, isSustainNote)  
    if AnnoyingSound == true and not isSustainNote then
        playSound('hitsound', 0.5, false)
    end      
end    

local Answer = false;
local WhiteBlack = false;
local GetOGNotes = false;
function onUpdate(elapsed)
    if Activate == true then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not seenCutscene then
            onTweenAlpha()
            startCountdown()
    
            if Activate == true then
                playSound('ToggleJingle')
                cameraFlash('funny', 'ffffff', 0.7, false)   
                Activate = false;             
            end   
        end   

        if GetOGNotes == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then
            GetOGNotes = true;
            if GetOGNotes == true then
                doTweenColor('zColor', 'z', '00ff00', 0.1, 'linear')
    
                for i = 0, getProperty('notes.length')-1 do
                    if getPropertyFromGroup('notes', i, 'noteType') == '' then
                        getPropertyFromGroup('notes', i, 'texture');   
                        getPropertyFromGroup('notes', i, 'noteSplashTexture');   
                    end    
                end
                
                for i = 0,4,1 do
                    if getPropertyFromGroup('notes', i, 'noteType') == '' then
                        getPropertyFromGroup('playerStrums', i, 'texture');
                        getPropertyFromGroup('opponentStrums', i, 'texture');  
                    end     
                end 
            end
        
        elseif GetOGNotes == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then
            GetOGNotes = false;
            doTweenColor('zColor', 'z', 'ffffff', 0.1, 'linear')

        end    


        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') then
            endSong()      
        end  

        if AnnoyingSound == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then
            AnnoyingSound = true;
            doTweenColor('iColor', 'i', '00ff00', 0.1, 'linear')

        elseif AnnoyingSound == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.I') then  
            AnnoyingSound = false;
            doTweenColor('iColor', 'i', 'ffffff', 0.1, 'linear')

        end 
    end    
    
    if getProperty('cpuControlled') == true and Visible == true then
        setProperty('botplayTxt.visible', false)
    end  
    if getProperty('cpuControlled') == true and Visible == false then
        setProperty('botplayTxt.visible', true) 
    end          
end

local NoteskinBF = 0;
local NotesplashBF = 0;
local PixelskinBF = 0;
local PixelsplashBF = 0;

local NoteskinDAD = 0;
local NotesplashDAD = 0;
local PixelskinDAD = 0;
local PixelsplashDAD = 0;

local n1 = 1 -- PrefixNameBF
local n2 = 1 -- NamePrefix1
local n3 = 1 -- NamePrefix1 group
local n4 = 1 -- XMLAnimation1 and XMLAnimation2 
local n5 = 1 -- XMLAnimation1 and XMLAnimation2 group
local n6 = 1 -- SplashX

local n1DAD = 1 -- PrefixNameDAD
local n2DAD = 1 -- NamePrefix1
local n3DAD = 1 -- NamePrefix1 group
local n4DAD = 1 -- XMLAnimation1 and XMLAnimation2 
local n5DAD = 1 -- XMLAnimation1 and XMLAnimation2 group
local n6DAD = 1 -- SplashX
function onUpdatePost(elapsed)
    -- Thanks to mayo78 for making me learn tables lel

    PrefixNameBF = {'Splashpre0', 'Splashpre1', 'Splashpre2'}
    PrefixNameDAD = {'SplashpreDAD0', 'SplashpreDAD1', 'SplashpreDAD2'}
    
    NamePrefix1 = {
        {'blue1', 'green1', 'purple1', 'red1'},
        {'majin-blue1', 'majin-green1', 'majin-purple1', 'majin-red1'},
        {'creepy-blue1', 'creepy-green1', 'creepy-purple1', 'creepy-red1'}
    }    
    
    NamePrefix2 = {
        {'blue2', 'green2', 'purple2', 'red2'},
        {'majin-blue2', 'majin-green2', 'majin-purple2', 'majin-red2'},
        {'creepy-blue2', 'creepy-green2', 'creepy-purple2', 'creepy-red2'}
    }
        
    XMLAnimation1 = {
        {'note splash blue 1', 'note splash green 1', 'note splash purple 1', 'note splash red 1'}
    }    
        
    XMLAnimation2 = {
        {'note splash blue 2', 'note splash green 2', 'note splash purple 2', 'note splash red 2'}
    }  

    SplashX = {290, 375, 210, 465}

    SplashY = 60
    SplashDADY = 210
	
    Splashes = {
        [1] = function()
            objectPlayAnimation(PrefixNameBF[n1], NamePrefix1[n2][n3], false)
            objectPlayAnimation(PrefixNameBF[n1], NamePrefix2[n2][n3], false)
            doTweenX('SplashpreX0', PrefixNameBF[n1], SplashX[n6], 0.001, 'linear')
            doTweenY('SplashpreY0', PrefixNameBF[n1], SplashY, 0.001, 'linear')
        end, 
    
        [2] = function()
            objectPlayAnimation(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], false)
            objectPlayAnimation(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], false)
            doTweenX('SplashpreXDAD0', PrefixNameDAD[n1DAD], SplashX[n6DAD], 0.001, 'linear')
            doTweenY('SplashpreYDAD0', PrefixNameDAD[n1DAD], SplashDADY, 0.001, 'linear')
        end,
    }

    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], 24, false);

    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], 24, false);

    addAnimationByIndices(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix1[n2][n3], XMLAnimation1[n4][n5], '0,1,2,3', 24)

    addAnimationByIndices(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameBF[n1], NamePrefix2[n2][n3], XMLAnimation2[n4][n5], '0,1,2,3', 24)


    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], 24, false);

    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], 24, false);
    luaSpriteAddAnimationByPrefix(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], 24, false);

    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix1[n2DAD][n3DAD], XMLAnimation1[n4DAD][n5DAD], '0,1,2,3', 24)

    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], '0,1,2,3', 24)
    addAnimationByIndices(PrefixNameDAD[n1DAD], NamePrefix2[n2DAD][n3DAD], XMLAnimation2[n4DAD][n5DAD], '0,1,2,3', 24)


    if Activate == true and Answer == false then
        -- BF --
        if NoteskinBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            NoteskinBF = 1;
            Previews[1]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then   
            NoteskinBF = 2;
            Previews[2]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinBF == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then   
            NoteskinBF = 3;
            Previews[3]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinBF == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then  
            NoteskinBF = 0;
            Previews[4]()

            playSound('scrollMenu', 0.5, false)
        end

        if NoteskinBF == 0 or NoteskinBF == 1 then  
            PreviewSplash[1]()
            n1 = 1
            n2 = 1
            n4 = 1

            if NotesplashBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 1;
                Splashes[1]()

                n3 = 2
                n5 = 2
                n6 = 2

            elseif NotesplashBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 2;
                Splashes[1]()

                n3 = 3
                n5 = 3
                n6 = 3

            elseif NotesplashBF == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 3;
                Splashes[1]()

                n3 = 4
                n5 = 4
                n6 = 4

            elseif NotesplashBF == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 0;
                Splashes[1]()

                n3 = 1
                n5 = 1
                n6 = 1

            end 
        elseif NoteskinBF == 2 then 
            PreviewSplash[2]()
            n1 = 2
            n2 = 2
            n4 = 1
    
            if NotesplashBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 1;
                Splashes[1]()

                n3 = 2
                n5 = 2
                n6 = 2

            elseif NotesplashBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 2;
                Splashes[1]()

                n3 = 3
                n5 = 3
                n6 = 3

            elseif NotesplashBF == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 3;
                Splashes[1]()

                n3 = 4
                n5 = 4
                n6 = 4

            elseif NotesplashBF == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 0;
                Splashes[1]()

                n3 = 1
                n5 = 1
                n6 = 1

            end 
        elseif NoteskinBF == 3 then 
            PreviewSplash[3]()
            n1 = 3
            n2 = 3
            n4 = 1

            if NotesplashBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 1;
                Splashes[1]()

                n3 = 2
                n5 = 2
                n6 = 2

            elseif NotesplashBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 2;
                Splashes[1]()                
                
                n3 = 3
                n5 = 3
                n6 = 3

            elseif NotesplashBF == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                NotesplashBF = 3;
                Splashes[1]()

                n3 = 4
                n5 = 4
                n6 = 4

            elseif NotesplashBF == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                NotesplashBF = 0;
                Splashes[1]()

                n3 = 1
                n5 = 1
                n6 = 1

            end 
        end  
        
        -- DAD --
        if NoteskinDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
            NoteskinDAD = 1;
            Previews[5]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then   
            NoteskinDAD = 2;
            Previews[6]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinDAD == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then   
            NoteskinDAD = 3;
            Previews[7]()

            playSound('scrollMenu', 0.5, false)
        elseif NoteskinDAD == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then  
            NoteskinDAD = 0;
            Previews[8]()

            playSound('scrollMenu', 0.5, false)
        end

        if NoteskinDAD == 0 or NoteskinDAD == 1 then  
            PreviewSplash[4]()
            n1DAD = 1
            n2DAD = 1
            n4DAD = 1

            if NotesplashDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 1;
                Splashes[2]()

                n3DAD = 2
                n5DAD = 2
                n6DAD = 2

            elseif NotesplashDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 2;
                Splashes[2]()

                n3DAD = 3
                n5DAD = 3
                n6DAD = 3

            elseif NotesplashDAD == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 3;
                Splashes[2]()

                n3DAD = 4
                n5DAD = 4
                n6DAD = 4

            elseif NotesplashDAD == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 0;
                Splashes[2]()

                n3DAD = 1
                n5DAD = 1
                n6DAD = 1

            end 
        elseif NoteskinDAD == 2 then 
            PreviewSplash[5]()
            n1DAD = 2
            n2DAD = 2
            n4DAD = 1
    
            if NotesplashDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 1;
                Splashes[2]()

                n3DAD = 2
                n5DAD = 2
                n6DAD = 2

            elseif NotesplashDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 2;
                Splashes[2]()

                n3DAD = 3
                n5DAD = 3
                n6DAD = 3

            elseif NotesplashDAD == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 3;
                Splashes[2]()

                n3DAD = 4
                n5DAD = 4
                n6DAD = 4

            elseif NotesplashDAD == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 0;
                Splashes[2]()

                n3DAD = 1
                n5DAD = 1
                n6DAD = 1

            end 
        elseif NoteskinDAD == 3 then 
            PreviewSplash[6]()
            n1DAD = 3
            n2DAD = 3
            n4DAD = 1

            if NotesplashDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 1;
                Splashes[2]()

                n3DAD = 2
                n5DAD = 2
                n6DAD = 2

            elseif NotesplashDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 2;
                Splashes[2]()

                n3DAD = 3
                n5DAD = 3
                n6DAD = 3

            elseif NotesplashDAD == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                NotesplashDAD = 3;
                Splashes[2]()

                n3DAD = 4
                n5DAD = 4
                n6DAD = 4

            elseif NotesplashDAD == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                NotesplashDAD = 0;
                Splashes[2]()

                n3DAD = 1
                n5DAD = 1
                n6DAD = 1

            end 
        end
    end   
    
    -- Note Skins --
    for i = 0, getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes', i, 'noteType') == '' and GetOGNotes == false then
            if getPropertyFromGroup('notes', i, 'mustPress') then
                if NoteskinBF == 0 then
                    setPropertyFromGroup('notes', i, 'texture', 'NOTE_assets');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                end
                if NoteskinBF == 1 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/tabi_NOTE_assets');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                end 
                if NoteskinBF == 2 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/Majin_Notes');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteskin/Majin_Splashes');
                end    
                if NoteskinBF == 3 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/creepy_assets');   
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteskin/creepySplashes');
                end  
            
                if Answer == true then 
                    if PixelskinBF == 0 then
                        setPropertyFromGroup('notes', i, 'texture', 'NOTE_assets');  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                    end    
                    if PixelskinBF == 1 then
                        setPropertyFromGroup('notes', i, 'texture', 'noteskin/NESNOTE_assets');  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                    end 
                end
            
            elseif not getPropertyFromGroup('notes', i, 'mustPress') then
                if NoteskinDAD == 0 then
                    setPropertyFromGroup('notes', i, 'texture', 'NOTE_assets');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                end
                if NoteskinDAD == 1 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/tabi_NOTE_assets');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                end 
                if NoteskinDAD == 2 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/Majin_Notes');  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteskin/Majin_Splashes');
                end    
                if NoteskinDAD == 3 then
                    setPropertyFromGroup('notes', i, 'texture', 'noteskin/creepy_assets');   
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteskin/creepySplashes');
                end  
            
                if Answer == true then 
                    if PixelskinDAD == 0 then
                        setPropertyFromGroup('notes', i, 'texture', 'NOTE_assets');  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                    end    
                    if PixelskinDAD == 1 then
                        setPropertyFromGroup('notes', i, 'texture', 'noteskin/NESNOTE_assets');  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
                    end 
                end
            end    
        end        
    end 
        
    -- Note Strums --
    for i = 0,4,1 do
        if getPropertyFromGroup('notes', i, 'noteType') == '' and GetOGNotes == false then
            if NoteskinBF == 0 then
                setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');  
            end
            if NoteskinBF == 1 then
                setPropertyFromGroup('playerStrums', i, 'texture', 'noteskin/tabi_NOTE_assets');  
            end 
            if NoteskinBF == 2 then
                setPropertyFromGroup('playerStrums', i, 'texture', 'noteskin/Majin_Notes');  
            end    
            if NoteskinBF == 3 then
                setPropertyFromGroup('playerStrums', i, 'texture', 'noteskin/creepy_assets');   
            end
            
            if NoteskinDAD == 0 then
                setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');  
            end
            if NoteskinDAD == 1 then
                setPropertyFromGroup('opponentStrums', i, 'texture', 'noteskin/tabi_NOTE_assets');  
            end 
            if NoteskinDAD == 2 then
                setPropertyFromGroup('opponentStrums', i, 'texture', 'noteskin/Majin_Notes');  
            end    
            if NoteskinDAD == 3 then
                setPropertyFromGroup('opponentStrums', i, 'texture', 'noteskin/creepy_assets');   
            end
                    
            if Answer == true then 
                if PixelskinBF == 0 then
                    setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets');  
                end    
                if PixelskinBF == 1 then
                    setPropertyFromGroup('playerStrums', i, 'texture', 'noteskin/NESNOTE_assets');  
                end   
            
                if PixelskinDAD == 0 then
                    setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets');  
                end    
                if PixelskinDAD == 1 then
                    setPropertyFromGroup('opponentStrums', i, 'texture', 'noteskin/NESNOTE_assets');  
                end 
            end 
        end   
    end

    -- Pixel Note --
    if Activate == true then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') then
            Answer = semifalse;
    
            doTweenAlpha('warnAplha', 'warn', 1, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 1, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 1, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 1, 0.5, 'linear')   
    
            setProperty('preview0.visible', false)
            setProperty('preview1.visible', false)
            setProperty('preview2.visible', false)
            setProperty('preview3.visible', false)    

            setProperty('previewDAD0.visible', false)
            setProperty('previewDAD1.visible', false)
            setProperty('previewDAD2.visible', false)
            setProperty('previewDAD3.visible', false)  
            
            setProperty('pixel1.visible', false)
            setProperty('pixel2.visible', false)

            setProperty('pixelDAD1.visible', false)
            setProperty('pixelDAD2.visible', false)
            
            setProperty('Splashpre0.visible', false)
            setProperty('Splashpre1.visible', false)
            setProperty('Splashpre2.visible', false) 

            setProperty('SplashpreDAD0.visible', false)
            setProperty('SplashpreDAD1.visible', false)
            setProperty('SplashpreDAD2.visible', false) 
    
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') and Answer == semifalse then
            Answer = true;
    
            doTweenAlpha('warnAplha', 'warn', 0, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 0, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 0, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 0, 0.8, 'linear')
            playSound('confirmMenu', 0.4, false)  
    
            setProperty('pixel1.visible', true)
            setProperty('pixel2.visible', false)

            setProperty('pixelDAD1.visible', true)
            setProperty('pixelDAD2.visible', false)
    
    
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.K') and Answer == semifalse then 
            Answer = false;
    
            doTweenAlpha('warnAplha', 'warn', 0, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 0, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 0, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 0, 0.8, 'linear')
            playSound('cancelMenu', 0.4, false)
    
            setProperty('pixel1.visible', false)
            setProperty('pixel2.visible', false)

            setProperty('pixelDAD1.visible', false)
            setProperty('pixelDAD2.visible', false)

            if NoteskinBF == 0 then
                setProperty('preview0.visible', true)
                setProperty('preview1.visible', false)
                setProperty('preview2.visible', false)
                setProperty('preview3.visible', false)  

            elseif NoteskinBF == 1 then   
                setProperty('preview0.visible', false)
                setProperty('preview1.visible', true)
                setProperty('preview2.visible', false)
                setProperty('preview3.visible', false)  
            
            elseif NoteskinBF == 2 then   
                setProperty('preview0.visible', false)
                setProperty('preview1.visible', false)
                setProperty('preview2.visible', true)
                setProperty('preview3.visible', false)   
              
            elseif NoteskinBF == 3 then   
                setProperty('preview0.visible', false)
                setProperty('preview1.visible', false)
                setProperty('preview2.visible', false)
                setProperty('preview3.visible', true) 
             
            end    

            if NoteskinDAD == 0 then
                setProperty('previewDAD0.visible', true)
                setProperty('previewDAD1.visible', false)
                setProperty('previewDAD2.visible', false)
                setProperty('previewDAD3.visible', false)  

            elseif NoteskinDAD == 1 then   
                setProperty('previewDAD0.visible', false)
                setProperty('previewDAD1.visible', true)
                setProperty('previewDAD2.visible', false)
                setProperty('previewDAD3.visible', false)  
            
            elseif NoteskinDAD == 2 then   
                setProperty('previewDAD0.visible', false)
                setProperty('previewDAD1.visible', false)
                setProperty('previewDAD2.visible', true)
                setProperty('previewDAD3.visible', false)   
              
            elseif NoteskinDAD == 3 then   
                setProperty('previewDAD0.visible', false)
                setProperty('previewDAD1.visible', false)
                setProperty('previewDAD2.visible', false)
                setProperty('previewDAD3.visible', true) 
             
            end  

            if NotesplashBF == 0 or NotesplashBF == 1 then
                setProperty('Splashpre0.visible', true)
                setProperty('Splashpre1.visible', false)
                setProperty('Splashpre2.visible', false) 
            
            elseif NotesplashBF == 2 then
                setProperty('Splashpre0.visible', false)
                setProperty('Splashpre1.visible', true)
                setProperty('Splashpre2.visible', false)  

            elseif NotesplashBF == 3 then
                setProperty('Splashpre0.visible', false)
                setProperty('Splashpre1.visible', false)
                setProperty('Splashpre2.visible', true)  
           
            end

            if NotesplashDAD == 0 or NotesplashDAD == 1 then
                setProperty('SplashpreDAD0.visible', true)
                setProperty('SplashpreDAD1.visible', false)
                setProperty('SplashpreDAD2.visible', false) 
            
            elseif NotesplashDAD == 2 then
                setProperty('SplashpreDAD0.visible', false)
                setProperty('SplashpreDAD1.visible', true)
                setProperty('SplashpreDAD2.visible', false)  

            elseif NotesplashDAD == 3 then
                setProperty('SplashpreDAD0.visible', false)
                setProperty('SplashpreDAD1.visible', false)
                setProperty('SplashpreDAD2.visible', true)  
           
            end
        end    
    
        if Answer == true then 
            setProperty('preview0.visible', false)
            setProperty('preview1.visible', false)
            setProperty('preview2.visible', false)
            setProperty('preview3.visible', false)    

            setProperty('previewDAD0.visible', false)
            setProperty('previewDAD1.visible', false)
            setProperty('previewDAD2.visible', false)
            setProperty('previewDAD3.visible', false)  
            
            setProperty('Splashpre0.visible', false)
            setProperty('Splashpre1.visible', false)
            setProperty('Splashpre2.visible', false)  

            setProperty('SplashpreDAD0.visible', false)
            setProperty('SplashpreDAD1.visible', false)
            setProperty('SplashpreDAD2.visible', false)  
   
            -- BF --
            if PixelskinBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
                PixelskinBF = 1;
    
                playSound('scrollMenu', 0.5, false)
                setTextString('Note', "NoteSkin: NES")
    
                setProperty('pixel1.visible', false)
                setProperty('pixel2.visible', true)
            
            elseif PixelskinBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then 
                PixelskinBF = 0;
    
                playSound('scrollMenu', 0.5, false)
                setTextString('Note', "NoteSkin: Pixel")
    
                setProperty('pixel1.visible', true)
                setProperty('pixel2.visible', false)
            end    

            if PixelskinBF == 0 or PixelskinBF == 1 then  
                PreviewSplash[1]()
                n1 = 1
                n2 = 1
                n4 = 1 

                if PixelsplashBF == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                    PixelsplashBF = 1;
                    Splashes[1]()

                    n3 = 2
                    n5 = 2
                    n6 = 2

                elseif PixelsplashBF == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                    PixelsplashBF = 2;
                    Splashes[1]()

                    n3 = 3
                    n5 = 3
                    n6 = 3

                elseif PixelsplashBF == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
                    PixelsplashBF = 3;
                    Splashes[1]()

                    n3 = 4
                    n5 = 4
                    n6 = 4

                elseif PixelsplashBF == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then  
                    PixelsplashBF = 0;
                    Splashes[1]()

                    n3 = 1
                    n5 = 1
                    n6 = 1

                end 
            end   
            
            -- DAD --
            if PixelskinDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
                PixelskinDAD = 1;
    
                playSound('scrollMenu', 0.5, false)
                setTextString('NoteDAD', "NoteSkin: NES")
    
                setProperty('pixelDAD1.visible', false)
                setProperty('pixelDAD2.visible', true)
            
            elseif PixelskinDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then 
                PixelskinDAD = 0;
    
                playSound('scrollMenu', 0.5, false)
                setTextString('NoteDAD', "NoteSkin: Pixel")
    
                setProperty('pixelDAD1.visible', true)
                setProperty('pixelDAD2.visible', false)
            end    

            if PixelskinDAD == 0 or PixelskinDAD == 1 then  
                PreviewSplash[4]() 
                n1DAD = 1
                n2DAD = 1
                n4DAD = 1

                if PixelsplashDAD == 0 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                    PixelsplashDAD = 1;
                    Splashes[2]()

                    n3DAD = 2
                    n5DAD = 2
                    n6DAD = 2

                elseif PixelsplashDAD == 1 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                    PixelsplashDAD = 2;
                    Splashes[2]()

                    n3DAD = 3
                    n5DAD = 3
                    n6DAD = 3

                elseif PixelsplashDAD == 2 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
                    PixelsplashDAD = 3;
                    Splashes[2]()

                    n3DAD = 4
                    n5DAD = 4
                    n6DAD = 4

                elseif PixelsplashDAD == 3 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then  
                    PixelsplashDAD = 0;
                    Splashes[2]()

                    n3DAD = 1
                    n5DAD = 1
                    n6DAD = 1

                end 
            end 
        end
    end   
    
    -- BackGround Color --
    if Activate == true then
        if WhiteBlack == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = true;
    
            setTextString('h', "Press [H] to Change BG to Black")
            setProperty('whitelol.visible', true)
            setProperty('playerwhitelol.visible', true)
            setProperty('opponentwhitelol.visible', true)
            setProperty('optionwhitelol.visible', true)

            setProperty('blacklol.visible', false)
            setProperty('playerlol.visible', false)
            setProperty('opponentlol.visible', false) 
            setProperty('optionlol.visible', false)
        elseif WhiteBlack == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = false;
    
            setTextString('h', "Press [H] to Change BG to White")
            setProperty('whitelol.visible', false)
            setProperty('playerwhitelol.visible', false)
            setProperty('opponentwhitelol.visible', false)
            setProperty('optionwhitelol.visible', false)

            setProperty('blacklol.visible', true)
            setProperty('playerlol.visible', true)
            setProperty('opponentlol.visible', true)
            setProperty('optionlol.visible', true)
        end 
    end 
end

Previews = {
    [1] = function()
        setTextString('Note', "NoteSkin: Tabi")

        setProperty('preview0.visible', false)
        setProperty('preview1.visible', true)
        setProperty('preview2.visible', false)
        setProperty('preview3.visible', false)
    end,
    [2] = function()
        setTextString('Note', "NoteSkin: Majin")

        setProperty('preview0.visible', false)
        setProperty('preview1.visible', false)
        setProperty('preview2.visible', true)
        setProperty('preview3.visible', false)
    end,  
    [3] = function()
        setTextString('Note', "NoteSkin: Creepy")

        setProperty('preview0.visible', false)
        setProperty('preview1.visible', false)
        setProperty('preview2.visible', false)
        setProperty('preview3.visible', true)
    end, 
    [4] = function()
        setTextString('Note', "NoteSkin: Normal")

        setProperty('preview0.visible', true)
        setProperty('preview1.visible', false)
        setProperty('preview2.visible', false)
        setProperty('preview3.visible', false)
    end,    
    
    [5] = function()
        setTextString('NoteDAD', "NoteSkin: Tabi")

        setProperty('previewDAD0.visible', false)
        setProperty('previewDAD1.visible', true)
        setProperty('previewDAD2.visible', false)
        setProperty('previewDAD3.visible', false)
    end,
    [6] = function()
        setTextString('NoteDAD', "NoteSkin: Majin")

        setProperty('previewDAD0.visible', false)
        setProperty('previewDAD1.visible', false)
        setProperty('previewDAD2.visible', true)
        setProperty('previewDAD3.visible', false)
    end,  
    [7] = function()
        setTextString('NoteDAD', "NoteSkin: Creepy")

        setProperty('previewDAD0.visible', false)
        setProperty('previewDAD1.visible', false)
        setProperty('previewDAD2.visible', false)
        setProperty('previewDAD3.visible', true)
    end, 
    [8] = function()
        setTextString('NoteDAD', "NoteSkin: Normal")

        setProperty('previewDAD0.visible', true)
        setProperty('previewDAD1.visible', false)
        setProperty('previewDAD2.visible', false)
        setProperty('previewDAD3.visible', false)
    end 
}

PreviewSplash = {
    [1] = function()
        setProperty('Splashpre0.visible', true)
        setProperty('Splashpre1.visible', false)
        setProperty('Splashpre2.visible', false)
    end,
    [2] = function()
        setProperty('Splashpre0.visible', false)
        setProperty('Splashpre1.visible', true)
        setProperty('Splashpre2.visible', false) 
    end,
    [3] = function()   
        setProperty('Splashpre0.visible', false)
        setProperty('Splashpre1.visible', false)
        setProperty('Splashpre2.visible', true) 
    end,     

    [4] = function()
        setProperty('SplashpreDAD0.visible', true)
        setProperty('SplashpreDAD1.visible', false)
        setProperty('SplashpreDAD2.visible', false)
    end,
    [5] = function()
        setProperty('SplashpreDAD0.visible', false)
        setProperty('SplashpreDAD1.visible', true)
        setProperty('SplashpreDAD2.visible', false) 
    end,
    [6] = function()   
        setProperty('SplashpreDAD0.visible', false)
        setProperty('SplashpreDAD1.visible', false)
        setProperty('SplashpreDAD2.visible', true) 
    end,   
}

function onVisibilty()
    setProperty('Splashpre0.visible', false)
    setProperty('Splashpre1.visible', false)
    setProperty('Splashpre2.visible', false) 

    setProperty('SplashpreDAD0.visible', false)
    setProperty('SplashpreDAD1.visible', false)
    setProperty('SplashpreDAD2.visible', false) 

    setProperty('preview0.visible', true)
    setProperty('preview1.visible', false)
    setProperty('preview2.visible', false)
    setProperty('preview3.visible', false)

    setProperty('previewDAD0.visible', true)
    setProperty('previewDAD1.visible', false)
    setProperty('previewDAD2.visible', false)
    setProperty('previewDAD3.visible', false)

    setProperty('pixel1.visible', false)
    setProperty('pixel2.visible', false)

    setProperty('pixelDAD1.visible', false)
    setProperty('pixelDAD2.visible', false)

    setProperty('whitelol.visible', false)
    setProperty('playerwhitelol.visible', false)
    setProperty('opponentwhitelol.visible', false)
    setProperty('optionwhitelol.visible', false)

    setProperty('warn.alpha', 0)
    setProperty('warn2.alpha', 0)
    setProperty('question.alpha', 0)
    setProperty('sidenote.alpha', 0)
end    

function onTweenAlpha()
    doTweenAlpha('yAlpha', 'y', 0, 0.1, 'linear')
    doTweenAlpha('tAlpha', 't', 0, 0.1, 'linear')

    doTweenAlpha('fAlpha', 'f', 0, 0.1, 'linear')
    doTweenAlpha('gAlpha', 'g', 0, 0.1, 'linear')

    doTweenAlpha('hAlpha', 'h', 0, 0.1, 'linear')
    doTweenAlpha('spaceAlpha', 'space', 0, 0.1, 'linear')

    doTweenAlpha('noteAlpha0', 'Note', 0, 0.1, 'linear')
    doTweenAlpha('noteDADAlpha0', 'NoteDAD', 0, 0.1, 'linear')

    doTweenAlpha('previewAlpha0', 'preview0', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha1', 'preview1', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha2', 'preview2', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha3', 'preview3', 0, 0.1, 'linear')

    doTweenAlpha('previewAlpha0DAD', 'previewDAD0', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha1DAD', 'previewDAD1', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha2DAD', 'previewDAD2', 0, 0.1, 'linear')
    doTweenAlpha('previewAlpha3DAD', 'previewDAD3', 0, 0.1, 'linear')

    doTweenAlpha('pixelAlpha1', 'pixel1', 0, 0.1, 'linear')
    doTweenAlpha('pixelAlpha2', 'pixel2', 0, 0.1, 'linear')

    doTweenAlpha('pixelAlpha1DAD', 'pixelDAD1', 0, 0.1, 'linear')
    doTweenAlpha('pixelAlpha2DAD', 'pixelDAD2', 0, 0.1, 'linear')

    doTweenAlpha('SplashpreAlpha0', 'Splashpre0', 0, 0.1, 'linear')
    doTweenAlpha('SplashpreAlpha1', 'Splashpre1', 0, 0.1, 'linear')
    doTweenAlpha('SplashpreAlpha2', 'Splashpre2', 0, 0.1, 'linear')

    doTweenAlpha('SplashpreAlphaDAD0', 'SplashpreDAD0', 0, 0.1, 'linear')
    doTweenAlpha('SplashpreAlphaDAD1', 'SplashpreDAD1', 0, 0.1, 'linear')
    doTweenAlpha('SplashpreAlphaDAD2', 'SplashpreDAD2', 0, 0.1, 'linear')

    doTweenAlpha('whitelolAlpha', 'whitelol', 0, 0.1, 'linear') 
    doTweenAlpha('playerwhitelolALpha', 'playerwhitelol', 0, 0.1, 'linear')
    doTweenAlpha('opponentwhitelolALpha', 'opponentwhitelol', 0, 0.1, 'linear')
    doTweenAlpha('optionwhitelolALpha', 'optionwhitelol', 0, 0.1, 'linear')

    doTweenAlpha('blacklolAlpha', 'blacklol', 0, 0.1, 'linear')  
    doTweenAlpha('playerlolALpha', 'playerlol', 0, 0.1, 'linear')
    doTweenAlpha('opponentlolALpha', 'opponentlol', 0, 0.1, 'linear')
    doTweenAlpha('optionlolALpha', 'optionlol', 0, 0.1, 'linear')

    doTweenAlpha('warnAplha', 'warn', 0, 0.1, 'linear')
    doTweenAlpha('warnAplha2', 'warn2', 0, 0.1, 'linear')
    doTweenAlpha('questionAplha', 'question', 0, 0.1, 'linear')
    doTweenAlpha('sidenoteAplha', 'sidenote', 0, 0.1, 'linear')
    doTweenAlpha('pAplha', 'p', 0, 0.1, 'linear')

    doTweenAlpha('plAlpha', 'pl', 0, 0.1, 'linear')
    doTweenAlpha('opAlpha', 'op', 0, 0.1, 'linear')
    doTweenAlpha('seAlpha', 'se', 0, 0.1, 'linear')
    doTweenAlpha('escAlpha', 'esc', 0, 0.1, 'linear')

    doTweenAlpha('zAlpha', 'z', 0, 0.1, 'linear')
    doTweenAlpha('iAlpha', 'i', 0, 0.1, 'linear')

    doTweenAlpha('scoreTxtAlpha', 'scoreTxt', 1, 0.1, 'linear')
    doTweenAlpha('healthBarAlpha', 'healthBar', 1, 0.1, 'linear')
    doTweenAlpha('healthBarBGAlpha', 'healthBarBG', 1, 0.1, 'linear')

    doTweenAlpha('iconP1Alpha', 'iconP1', 1, 0.1, 'linear')
    doTweenAlpha('iconP2Alpha', 'iconP2', 1, 0.1, 'linear') 
end    

function onTweenXY()
    doTweenY('yY', 'y', 120, 0.1, 'linear')
    doTweenY('tY', 't', 150, 0.1, 'linear')

    doTweenY('fY', 'f', 300, 0.1, 'linear')
    doTweenY('gY', 'g', 270, 0.1, 'linear')

    doTweenY('pY', 'p', 412, 0.1, 'linear')
    doTweenY('warnY', 'warn', 450, 0.1, 'linear')
    doTweenY('warn2Y', 'warn2', 480, 0.1, 'linear')
    doTweenY('questionY', 'question', 520, 0.1, 'linear')
    doTweenY('sidenoteY', 'sidenote', 560, 0.1, 'linear')

    doTweenY('spaceY', 'space', 360, 0.1, 'linear')

    doTweenY('noteY0', 'Note', 80, 0.1, 'linear')
    doTweenY('noteDADY0', 'NoteDAD', 230, 0.1, 'linear')

    doTweenY('SplashpreY0', 'Splashpre0', 1230, 0.001, 'linear')
    doTweenX('SplashpreX0', 'Splashpre0', 100, 0.001, 'linear')
    doTweenY('SplashpreY1', 'Splashpre1', 1230, 0.001, 'linear')
    doTweenX('SplashpreX1', 'Splashpre1', 100, 0.001, 'linear')
    doTweenY('SplashpreY2', 'Splashpre2', 1230, 0.001, 'linear')
    doTweenX('SplashpreX2', 'Splashpre2', 100, 0.001, 'linear')

    doTweenY('SplashpreYDAD0', 'SplashpreDAD0', 1230, 0.001, 'linear')
    doTweenX('SplashpreXDAD0', 'SplashpreDAD0', 100, 0.001, 'linear')
    doTweenY('SplashpreYDAD1', 'SplashpreDAD1', 1230, 0.001, 'linear')
    doTweenX('SplashpreXDAD1', 'SplashpreDAD1', 100, 0.001, 'linear')
    doTweenY('SplashpreYDAD2', 'SplashpreDAD2', 1230, 0.001, 'linear')
    doTweenX('SplashpreXDAD2', 'SplashpreDAD2', 100, 0.001, 'linear')

    doTweenX('spaceX', 'space', 430, 0.001, 'linear')

    doTweenY('hY', 'h', 410, 0.1, 'linear')
    doTweenY('zY', 'z', 440, 0.1, 'linear')
    doTweenY('iY', 'i', 460, 0.1, 'linear')

    doTweenY('plY', 'pl', 60, 0.1, 'linear')
    doTweenY('opY', 'op', 210, 0.1, 'linear')
    doTweenY('seY', 'se', 360, 0.1, 'linear')
end    

function onPrecaching()
    precacheImage('NOTE_assets')
    precacheImage('noteskin/tabi_NOTE_assets')
    precacheImage('noteskin/Majin_Notes')
    precacheImage('noteskin/creepy_assets')

    precacheImage('noteseen/normal notes')
    precacheImage('noteseen/tabi notes')
    precacheImage('noteseen/majin notes')
    precacheImage('noteseen/creepy notes')

    precacheImage('noteSplashes')
    precacheImage('notesplash/Majin_Splashes')
    precacheImage('notesplash/creepySplashes')

    precacheImage('pixelUI/noteseen/pixel notes')
    precacheImage('pixelUI/noteseen/NES notes')
    
    precacheSound('scrollMenu')
    precacheSound('ToggleJingle')  
    precacheSound('hitsound')

    precacheMusic('offsetSong')
end

function onRemove()
    if curBeat == 2 then
        removeLuaText('y', true);
        removeLuaText('t', true);
        removeLuaText('space', true);
    
        removeLuaText('Note', true);
        removeLuaText('NoteDAD', true);
    
        removeLuaSprite('preview0', true);
        removeLuaSprite('preview1', true);
        removeLuaSprite('preview2', true);
        removeLuaSprite('preview3', true);
    
        removeLuaSprite('preview0DAD', true);
        removeLuaSprite('preview1DAD', true);
        removeLuaSprite('preview2DAD', true);
        removeLuaSprite('preview3DAD', true);
    
        removeLuaSprite('pixel1', true)
        removeLuaSprite('pixel2', true)
    
        removeLuaSprite('pixelDAD1', true)
        removeLuaSprite('pixelDAD2', true)
    
        removeLuaSprite('Splashpre0', true);
        removeLuaSprite('Splashpre1', true);
        removeLuaSprite('Splashpre2', true);
    
        removeLuaSprite('whitelol', true);
        removeLuaSprite('playerwhitelol', true);
        removeLuaSprite('opponentwhitelol', true);
        removeLuaSprite('optionwhitelol', true);
    
        removeLuaSprite('blacklol', true);
        removeLuaSprite('playerlol', true);
        removeLuaSprite('opponentlol', true);
        removeLuaSprite('optionlol', true);
    
        removeLuaSprite('pl', true);
        removeLuaSprite('op', true);
        removeLuaSprite('se', true);
        removeLuaSprite('esc', true);
    
        removeLuaText('warn', true);
        removeLuaText('warn2', true);
        removeLuaText('question', true);
        removeLuaText('sidenote', true);
        removeLuaText('p', true);
    
        removeLuaText('f', true);
        removeLuaText('g', true);
        removeLuaText('z', true);
        removeLuaText('i', true);
    end    
end    
