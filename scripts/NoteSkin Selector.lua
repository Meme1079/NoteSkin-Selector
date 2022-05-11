function onCreate()
    makeLuaText('space', 'Press [SPACE] to Start', 800, 735);
    setTextSize('space', 30)
    addLuaText('space', true)

    makeLuaText('t', 'Press [T] to Change NoteSkin', 0, 660);
    setTextSize('t', 20)
    setTextAlignment('t', 'middle')
    addLuaText('t', true)

    makeLuaText('y', 'Press [Y] to Check Note Splashes', 0, 635);
    setTextSize('y', 20)
    setTextColor('y', 'ff0000')
    setTextAlignment('y', 'middle')
    addLuaText('y', true)

    makeLuaText('f', 'Press [F] to Change NoteSkin', 0, 660);
    setTextSize('f', 20)
    setTextAlignment('f', 'middle')
    addLuaText('f', true)

    makeLuaText('g', 'Press [G] to Check Note Splashes', 0, 635);
    setTextSize('g', 20)
    setTextColor('g', 'ff0000')
    setTextAlignment('g', 'middle')
    addLuaText('g', true)

    makeLuaText('e', 'Press [E] to Change Both NoteSkin', 0, 645);
    setTextSize('e', 19.5)
    setTextAlignment('e', 'middle')
    addLuaText('e', true)

    makeLuaText('esc', 'Press [ESCAPE] to Exit the song', 0, 655);
    setTextSize('esc', 18)
    setTextColor('esc', 'ff0000')
    addLuaText('esc', true)

    makeLuaText('Arrow', '>', 0, 228);
    setTextSize('Arrow', 16)
    addLuaText('Arrow', true)

    -- Warn --

    makeLuaText('p', 'Press [P] to Change into Pixel Note', 0, 635)
    setTextSize('p', 18)
    addLuaText('p', true)

    makeLuaText('warn', 'This only works in Pixel Stages', 0, 655)
    setTextSize('warn', 19)
    setTextColor('warn', 'ff0000')
    addLuaText('warn', true)

    makeLuaText('warn2', 'Are you sure you want to proceed?', 0, 646)
    setTextSize('warn2', 19)
    setTextColor('warn2', 'ff0000')
    addLuaText('warn2', true)

    makeLuaText('question', '[K] or [L]', 0, 735)
    setTextSize('question', 30)
    setTextColor('question', 'ff0000')
    addLuaText('question', true)

    makeLuaText('sidenote', 'SideNote: [K] = Normal and [L] = Pixel', 0, 655)
    setTextSize('sidenote', 16)
    setTextColor('sidenote', 'ff0000')
    addLuaText('sidenote', true)

    -- Setting --

    Xe = 248

    makeLuaText('h', 'Press [H] to Change BG to White', 0, 230);
    setTextSize('h', 20)
    addLuaText('h', true)

    makeLuaText('q', 'Press [Q] to Select All the Toggles', 0, 225);
    setTextSize('q', 18.5)
    addLuaText('q', true)

    makeLuaText('e1', 'Toggle Get the NoteSkin in the stage', 0, Xe);
    setTextSize('e1', 16)
    addLuaText('e1', true)

    makeLuaText('e2', 'Toggle Hitsounds', 0, Xe);
    setTextSize('e2', 16)
    addLuaText('e2', true)

    makeLuaText('e3', 'Toggle Change Opponent Scroll', 0, Xe);
    setTextSize('e3', 16)
    addLuaText('e3', true)

    makeLuaText('e4', 'Toggle BG behind the Notes ', 0, Xe);
    setTextSize('e4', 16)
    addLuaText('e4', true)

    -- Background --

    makeLuaSprite('blacklol', nil, 630, 0)  -- if you don't know what nil is, it's means no value 
    makeGraphic('blacklol', 400, 1000, '000000')
    setObjectCamera('blacklol', 'camHUD')
    setProperty('blacklol.alpha', 0.3)
    addLuaSprite('blacklol')

    makeLuaSprite('whitelol', nil, 630, 0)
    makeGraphic('whitelol', 400, 1000, 'ffffff')
    setObjectCamera('whitelol', 'camHUD')
    setProperty('whitelol.alpha', 0.3)
    addLuaSprite('whitelol')

    -- GamePlay Background --

    makeLuaSprite('BFblacklol', nil, 730, 0)
    makeGraphic('BFblacklol', 450, 1000, '000000')
    setObjectCamera('BFblacklol', 'camHUD')
    addLuaSprite('BFblacklol')

    makeLuaSprite('DADblacklol', nil, 90, 0)
    makeGraphic('DADblacklol', 450, 1000, '000000')
    setObjectCamera('DADblacklol', 'camHUD')
    addLuaSprite('DADblacklol')

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
    setTextSize('pl', 30)
    setObjectCamera('pl', 'camHUD')
    setTextColor('pl', '31b1d1')
    addLuaText('pl', true)

    makeLuaText('op', 'Opponent', 425, 80)
    setTextSize('op', 30)
    setObjectCamera('op', 'camHUD')
    setTextColor('op', 'af66ce')
    addLuaText('op', true)

    makeLuaText('se', 'Settings', 425, 80)
    setTextSize('se', 30)
    setObjectCamera('se', 'camHUD')
    addLuaText('se', true)

    -- Note Text --

    makeLuaText('Note', 'NoteSkin: Normal', 0, 695)
    setTextSize('Note', 25)
    setTextAlignment('Note', 'middle')
    addLuaText('Note', true)

    makeLuaText('NoteDAD', 'NoteSkin: Normal', 0, 695)
    setTextSize('NoteDAD', 25)
    setTextAlignment('NoteDAD', 'middle')
    addLuaText('NoteDAD', true)

    -- Functions --

    onVisibilty()
    onTweenXY()
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
        if Activate == true then
            playMusic('offsetSong')
        end       
        if Activate == false then
            playMusic('')
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

    doTweenAlpha('iconP1Alpha', 'iconP1', 1, 0.1, 'linear')
    doTweenAlpha('iconP2Alpha', 'iconP2', 1, 0.1, 'linear') 
    doTweenAlpha('scoreTxtAlpha', 'scoreTxt', 1, 0.1, 'linear')
    doTweenAlpha('healthBarAlpha', 'healthBar', 1, 0.1, 'linear')
    doTweenAlpha('healthBarBGAlpha', 'healthBarBG', 1, 0.1, 'linear')
end 

function onCountdownTick(counter)
    if counter == 1 then
        onRemove()
    end    
end

local AnnoyingSound = false;
local BGNote = false;
local WhiteBlack = false;
function goodNoteHit(id, direction, noteType, isSustainNote)  
    if AnnoyingSound == true and not isSustainNote then
        playSound('hitsound', 0.5, false)
    end  
end  

function setPos(obj, pos) 
    -- shortcut to setProperty('obj.x') or setProperty('obj.y') AWESOME!
    -- also obj is the string of the object
    -- example: ('obj', {x, y})
    if pos[1] ~= nil then
        setProperty(obj..'.x', pos[1])
    end
    if pos[2] ~= nil then
        setProperty(obj..'.y', pos[2])
    end
end

function getPos(obj)
    -- it gets the Position
    -- example: debugPrint(getPos('obj'))
    return {getProperty(obj..'.x'), getProperty(obj..'.y')}
end

local count = 1

local Answer = false;
local GetOGNotes = false;
local ChangeScroll = false;
local AllToggles = false;
function onUpdate(elapsed)
    if getProperty('inCutscene') == true then
        Activate = false;
        playMusic('')
        onRemove()
    end 

    local green = '00ff00'
    local white = 'ffffff'

    if Activate == true then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not seenCutscene then
            startCountdown()
            onRemove()

            doTweenAlpha('iconP1Alpha', 'iconP1', 1, 0.1, 'linear')
            doTweenAlpha('iconP2Alpha', 'iconP2', 1, 0.1, 'linear') 
            doTweenAlpha('scoreTxtAlpha', 'scoreTxt', 1, 0.1, 'linear')
            doTweenAlpha('healthBarAlpha', 'healthBar', 1, 0.1, 'linear')
            doTweenAlpha('healthBarBGAlpha', 'healthBarBG', 1, 0.1, 'linear')

            if Activate == true then
                playSound('ToggleJingle')
                cameraFlash('funny', white, 0.7, false)      
            end 
    
            Activate = false; 
        end 

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
            playSound('deniedMOMENT', 0.5, false)
        end   
        
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') then
            endSong()      
        end   

        if AllToggles == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = true;
            doTweenColor('qColor', 'q', green, 0.1, 'linear')
            playSound('confirmMenu', 0.4, false)  

            doTweenColor('e1Color', 'e1', green, 0.1, 'linear')
            doTweenColor('e2Color', 'e2', green, 0.1, 'linear')
            doTweenColor('e3Color', 'e3', green, 0.1, 'linear')
            doTweenColor('e4Color', 'e4', green, 0.1, 'linear')

            GetOGNotes = true;
            AnnoyingSound = true;
            BGNote = true;
            ChangeScroll = true;   
        elseif AllToggles == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = false;
            doTweenColor('qColor', 'q', white, 0.1, 'linear')
            playSound('cancelMenu', 0.4, false)  

            doTweenColor('e1Color', 'e1', white, 0.1, 'linear')
            doTweenColor('e2Color', 'e2', white, 0.1, 'linear')
            doTweenColor('e3Color', 'e3', white, 0.1, 'linear')
            doTweenColor('e4Color', 'e4', white, 0.1, 'linear')

            GetOGNotes = false;
            AnnoyingSound = false;
            BGNote = false;
            ChangeScroll = false;   
        end    
        
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

        if count == 1 then
            if GetOGNotes == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                GetOGNotes = true;
                doTweenColor('e1Color', 'e1', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false) 
            elseif GetOGNotes == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                GetOGNotes = false;
                doTweenColor('e1Color', 'e1', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false)
            end    
        end
        
        if GetOGNotes == true then
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
        
        if count == 2 then
            if AnnoyingSound == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                AnnoyingSound = true;
                doTweenColor('e2Color', 'e2', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif AnnoyingSound == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then  
                AnnoyingSound = false;
                doTweenColor('e2Color', 'e2', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false)
            end 
        end 
        
        if count == 3 then
            if ChangeScroll == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                ChangeScroll = true;
                doTweenColor('e3Color', 'e3', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
        
            elseif ChangeScroll == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then    
                ChangeScroll = false;
                doTweenColor('e3Color', 'e3', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false) 
            end
        end    
        
        if ChangeScroll == true then
            for i = 0,7 do
                setPropertyFromGroup('opponentStrums', i, 'downScroll', true)
                setPropertyFromGroup('opponentStrums', i, 'y', 570)
        
                setPos('healthBar', {nil, 620})
                setPos('healthBarBG', {nil, 616})
                setPos('iconP1', {nil, 550})
                setPos('iconP2', {nil, 550})
                setPos('scoreTxt', {nil, 650})
        
                if downscroll then
                    setPropertyFromGroup('opponentStrums', i, 'downScroll', false)
                    setPropertyFromGroup('opponentStrums', i, 'y', 50)
        
                    setPos('healthBar', {nil, 100})                
                    setPos('healthBarBG', {nil, 96})
                    setPos('iconP1', {nil, 30})
                    setPos('iconP2', {nil, 30})
                    setPos('scoreTxt', {nil, 130})
                end    
            end
        end
        if ChangeScroll == false then
            setPos('healthBar', {343.5, nil})
            setPos('healthBarBG', {339.5, nil})
            setPos('iconP1', {610, nil})
            setPos('iconP2', {509, nil})
            setPos('scoreTxt', {0, nil})
            setTextSize('scoreTxt', 20)   
        
            if downscroll then
                setPos('healthBar', {nil, 83.2})
                setPos('healthBarBG', {nil, 79.2})
                setPos('iconP1', {nil, 8.2})
                setPos('iconP2', {nil, 8.2})
                setPos('scoreTxt', {nil, 115.2})
            end       
        end    
        
        if count == 4 then
            if BGNote == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                BGNote = true;
                doTweenColor('e4Color', 'e4', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
        
            elseif BGNote == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then    
                BGNote = false;
                doTweenColor('e4Color', 'e4', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false) 
            end
        end  
    end   

    if Activate == false then
        if BGNote == true then
            setProperty('BFblacklol.alpha', 0.5)  
            setProperty('DADblacklol.alpha', 0.5)  

            if middlescroll then
                removeLuaSprite('DADblacklol', true)
                setPos('BFblacklol', {410, nil})

                noteTweenAlpha('Oppo0', 0, 0, 0.001, 'linear')  
                noteTweenAlpha('Oppo1', 1, 0, 0.001, 'linear')  
                noteTweenAlpha('Oppo2', 2, 0, 0.001, 'linear')  
                noteTweenAlpha('Oppo3', 3, 0, 0.001, 'linear')  
            end    
        end   
    end 

    if getProperty('cpuControlled') == true and Visible == true then
        setProperty('botplayTxt.visible', false)
    end  
    if getProperty('cpuControlled') == true and Visible == false then
        setProperty('botplayTxt.visible', true) 
    end
end  

PreX = 255
PreY = 90

PreDADY = 240

nse = 'noteseen/'
pUI = 'pixelUI/noteseen/'

NoteName = {'preview0', 'preview1', 'preview2', 'preview3'}
NoteNameDAD = {'previewDAD0', 'previewDAD1', 'previewDAD2', 'previewDAD3'}

NoteString = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes'}
NoteStringDAD = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes'}

PixelName = {'Pixelpreview0', 'Pixelpreview1', 'Pixelpreview2', 'Pixelpreview3'}
PixelNameDAD = {'PixelpreviewDAD0', 'PixelpreviewDAD1', 'PixelpreviewDAD2', 'PixelpreviewDAD3'}

PixelString = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes'}
PixelStringDAD = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes'}

local ns1 = 1
local ns2 = 1

local ps1 = 1
local ps2 = 1
function onCustomNotes()
    onNoteText()
    if Answer == false then
        for i = 1, #NoteName do
            makeLuaSprite('preview', NoteString[ns1], PreX, PreY)
            setObjectCamera('preview', 'camHUD')
            scaleObject('preview', 0.5, 0.5)
            addLuaSprite('preview', true)
        end  

        for i = 1, #NoteNameDAD do
            makeLuaSprite('previewDAD', NoteStringDAD[ns2], PreX, PreDADY)
            setObjectCamera('previewDAD', 'camHUD')
            scaleObject('previewDAD', 0.5, 0.5)
            addLuaSprite('previewDAD', true)
        end 
    end  
    
    if Answer == true then
        for i = 1, #PixelName do
            makeLuaSprite('Pixelpreview', PixelString[ps1], PreX, PreY)
            setObjectCamera('Pixelpreview', 'camHUD')
            setProperty('Pixelpreview.antialiasing', false)
            scaleObject('Pixelpreview', 0.5, 0.5)
            addLuaSprite('Pixelpreview', true)
        end  

        for i = 1, #PixelNameDAD do
            makeLuaSprite('PixelpreviewDAD', PixelStringDAD[ps2], PreX, PreDADY)
            setObjectCamera('PixelpreviewDAD', 'camHUD')
            setProperty('PixelpreviewDAD.antialiasing', false)
            scaleObject('PixelpreviewDAD', 0.5, 0.5)
            addLuaSprite('PixelpreviewDAD', true)
        end 
    end    
end    

sn = 'NoteSkin: '

NoteText = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'HD'}
NoteTextDAD = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'HD'}

PixelText = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'HD'}
PixelTextDAD = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'HD'}
function onNoteText()
    if Answer == false then
        for i = 1, #NoteText do
            setTextString('Note', NoteText[ns1])
        end
        for i = 1, #NoteTextDAD do
            setTextString('NoteDAD', NoteText[ns2])
        end
    end 
    
    if Answer == true then
        for i = 1, #PixelText do
            setTextString('Note', PixelText[ps1])
        end
        for i = 1, #PixelTextDAD do
            setTextString('NoteDAD', PixelText[ps2])
        end
    end    
end

function onBlackWhite()   
    -- coming soon lol
end    

function onCustomSplash()
    -- i hate this
end

function onSplashPrefix()
    -- i hate this
end    

local pos = 460
function onPlus()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.DOWN') then
        playSound('scrollMenu', 0.5, false)
        count = count + 1
        pos = pos + 20
        setPos('Arrow', {nil, pos})   
    end  

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.UP') then
        playSound('scrollMenu', 0.5, false)
        count = count - 1
        pos = pos - 20
        setPos('Arrow', {nil, pos})   
    end    

    if Answer == false then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            ns1 = ns1 + 1
        end  
    
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
            playSound('scrollMenu', 0.5, false)
            ns2 = ns2 + 1
        end  

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
            playSound('scrollMenu', 0.5, false)
            ns1 = ns1 + 1
            ns2 = ns2 + 1
        end  
    end    

    if Answer == true then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            ps1 = ps1 + 1
        end  
    
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
            playSound('scrollMenu', 0.5, false)
            ps2 = ps2 + 1
        end  

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
            playSound('scrollMenu', 0.5, false)
            ps1 = ps1 + 1
            ps2 = ps2 + 1
        end 
    end  
end

n = 5 -- Normal
p = 4 -- Pixel
function onReset()
    if ns1 == n then
        ns1 = 1
    end    
    if ns2 == n then
        ns2 = 1
    end  
    
    if ps1 == p then
        ps1 = 1
    end
    if ps2 == p then
        ps2 = 1
    end   
    
    if count == 5 then
        setPos('Arrow', {nil, 460})
        pos = 460
        count = 1
    end  
    
    if count == 0 then
        setPos('Arrow', {nil, 520})
        pos = 520
        count = 4
    end    
end

nw = 'notesplash/weeb/'
npl = 'notesplash/'

ns = 'noteskin/'

NoteAssets = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets'}
NoteAssetsDAD = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets'}

SplashAssets = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes'}
SplashAssetsDAD = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes'}

PixelAssets = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets'}
PixelAssetsDAD = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets'}

PixelSplashAssets = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes'}
PixelSplashAssetsDAD = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes'}
function onUpdatePost(elapsed)
    for i = 0, getProperty('notes.length')-1 do
        if getPropertyFromGroup('notes', i, 'noteType') == '' and GetOGNotes == false then
            if getPropertyFromGroup('notes', i, 'mustPress') then -- Player Section
                if Answer == false then
                    setPropertyFromGroup('notes', i, 'texture', NoteAssets[ns1]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssets[ns1]);
                end

                if Answer == true then
                    setPropertyFromGroup('notes', i, 'texture', PixelAssets[ps1]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssets[ps1]);  
                end    
            elseif not getPropertyFromGroup('notes', i, 'mustPress') then -- Opponent Section
                if Answer == false then
                    setPropertyFromGroup('notes', i, 'texture', NoteAssetsDAD[ns2]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssetsDAD[ns2]);
                end

                if Answer == true then
                    setPropertyFromGroup('notes', i, 'texture', PixelAssetsDAD[ps2]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssetsDAD[ps2]);   
                end
            end
        end
    end 
    
    for i = 0,4,1 do   
        if GetOGNotes == false then
            if Answer == false then
                setPropertyFromGroup('playerStrums', i, 'texture', NoteAssets[ns1]);
                setPropertyFromGroup('opponentStrums', i, 'texture', NoteAssetsDAD[ns2]);  
            end

            if Answer == true then
                setPropertyFromGroup('playerStrums', i, 'texture', PixelAssets[ps1]);
                setPropertyFromGroup('opponentStrums', i, 'texture', PixelAssetsDAD[ps2]);   
            end   
        end
    end   

    if Activate == true then
        onCustomNotes()
        onPlus()
        onReset()

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') then
            Answer = semifalse;

            setTextString('Note', '')
            setTextString('NoteDAD', '')

            doTweenAlpha('preAlpha', 'preview', 0, 0.1, 'linear') 
            doTweenAlpha('preDADAlpha', 'previewDAD', 0, 0.1, 'linear')

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 0, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 0, 0.1, 'linear')

            doTweenAlpha('warnAplha', 'warn', 1, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 1, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 1, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 1, 0.5, 'linear')   
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') and Answer == semifalse then
            Answer = true;
            playSound('confirmMenu', 0.4, false)  

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 1, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 1, 0.1, 'linear')
    
            doTweenAlpha('warnAplha', 'warn', 0, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 0, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 0, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 0, 0.5, 'linear')    
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.K') and Answer == semifalse then 
            Answer = false;
            playSound('cancelMenu', 0.4, false)

            doTweenAlpha('preAlpha', 'preview', 1, 0.1, 'linear') 
            doTweenAlpha('preDADAlpha', 'previewDAD', 1, 0.1, 'linear')

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 0, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 0, 0.1, 'linear')

            doTweenAlpha('warnAplha', 'warn', 0, 0.5, 'linear')
            doTweenAlpha('warnAplha2', 'warn2', 0, 0.5, 'linear')
            doTweenAlpha('questionAplha', 'question', 0, 0.5, 'linear')
            doTweenAlpha('sidenoteAplha', 'sidenote', 0, 0.5, 'linear')    
        end
    end    
end    

function onVisibilty()
    setProperty('whitelol.visible', false)
    setProperty('playerwhitelol.visible', false)
    setProperty('opponentwhitelol.visible', false)
    setProperty('optionwhitelol.visible', false)

    setProperty('BFblacklol.alpha', 0)
    setProperty('DADblacklol.alpha', 0)

    setProperty('warn.alpha', 0)
    setProperty('warn2.alpha', 0)
    setProperty('question.alpha', 0)
    setProperty('sidenote.alpha', 0)
end

function onTweenXY()
    doTweenY('yY', 'y', 120, 0.1, 'linear')
    doTweenY('tY', 't', 150, 0.1, 'linear')

    doTweenY('fY', 'f', 300, 0.1, 'linear')
    doTweenY('gY', 'g', 270, 0.1, 'linear')

    doTweenY('eY', 'e', 360, 0.1, 'linear')

    doTweenY('pY', 'p', 450, 0.1, 'linear')
    doTweenY('warnY', 'warn', 480, 0.1, 'linear')
    doTweenY('warn2Y', 'warn2', 510, 0.1, 'linear')
    doTweenY('questionY', 'question', 550, 0.1, 'linear')
    doTweenY('sidenoteY', 'sidenote', 590, 0.1, 'linear')

    doTweenY('spaceY', 'space', 410, 0.1, 'linear')
    doTweenX('spaceX', 'space', 430, 0.1, 'linear')

    doTweenY('noteY0', 'Note', 80, 0.1, 'linear')
    doTweenY('noteDADY0', 'NoteDAD', 230, 0.1, 'linear')   

    doTweenY('ArrowY', 'Arrow', 460, 0.1, 'linear')

    doTweenY('hY', 'h', 410, 0.1, 'linear')
    doTweenY('qY', 'q', 435, 0.1, 'linear')

    doTweenY('e1Y', 'e1', 460, 0.1, 'linear')
    doTweenY('e2Y', 'e2', 480, 0.1, 'linear')
    doTweenY('e3Y', 'e3', 500, 0.1, 'linear')
    doTweenY('e4Y', 'e4', 520, 0.1, 'linear')

    doTweenY('plY', 'pl', 60, 0.1, 'linear')
    doTweenY('opY', 'op', 210, 0.1, 'linear')
    doTweenY('seY', 'se', 360, 0.1, 'linear')
end    

function onPrecaching()
    precacheImage('NOTE_assets')
    precacheImage(ns..'tabi_NOTE_assets')
    precacheImage(ns..'Majin_Notes')
    precacheImage(ns..'creepy_assets')

    precacheImage(nse..'normal notes')
    precacheImage(nse..'tabi notes')
    precacheImage(nse..'majin notes')
    precacheImage(nse..'creepy notes')

    precacheImage('noteSplashes')
    precacheImage(npl..'Majin_Splashes')
    precacheImage(npl..'creepySplashes')
    precacheImage(npl..'dokidokiSplashes')

    precacheImage(pUI..'pixel notes')
    precacheImage(pUI..'NES notes')
    precacheImage(pUI..'dokidoki notes')

    precacheImage(nw..'noteSplashes')
    precacheImage(nw..'dokidokiSplashes')
    
    precacheSound('scrollMenu')
    precacheSound('ToggleJingle')  
    precacheSound('hitsound')

    precacheMusic('offsetSong')
end

function onRemove() 
    removeLuaText('y', true);
    removeLuaText('t', true);

    removeLuaText('g', true);
    removeLuaText('f', true);

    removeLuaText('e', true);
    removeLuaText('space', true);

    removeLuaText('Note', true);
    removeLuaText('NoteDAD', true);

    removeLuaSprite('preview', true);
    removeLuaSprite('previewDAD', true);

    removeLuaSprite('Pixelpreview', true)
    removeLuaSprite('PixelpreviewDAD', true)

    removeLuaSprite('whitelol', true);
    removeLuaSprite('playerwhitelol', true);
    removeLuaSprite('opponentwhitelol', true);
    removeLuaSprite('optionwhitelol', true);

    removeLuaSprite('blacklol', true);
    removeLuaSprite('playerlol', true);
    removeLuaSprite('opponentlol', true);
    removeLuaSprite('optionlol', true);

    removeLuaText('pl', true);
    removeLuaText('op', true);
    removeLuaText('se', true);
    removeLuaText('esc', true);

    removeLuaText('warn', true);
    removeLuaText('warn2', true);
    removeLuaText('question', true);
    removeLuaText('sidenote', true);

    removeLuaText('p', true);

    removeLuaText('Arrow', true);

    removeLuaText('h', true);
    removeLuaText('q', true);

    removeLuaText('e1', true);
    removeLuaText('e2', true);
    removeLuaText('e3', true);
    removeLuaText('e4', true);
end 
