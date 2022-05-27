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
    setTextColor('y', red)
    setTextAlignment('y', 'middle')
    addLuaText('y', true)

    makeLuaText('f', 'Press [F] to Change NoteSkin', 0, 660);
    setTextSize('f', 20)
    setTextAlignment('f', 'middle')
    addLuaText('f', true)

    makeLuaText('g', 'Press [G] to Check Note Splashes', 0, 635);
    setTextSize('g', 20)
    setTextColor('g', red)
    setTextAlignment('g', 'middle')
    addLuaText('g', true)

    makeLuaText('e', 'Press [E] to Change Both NoteSkin', 0, 645);
    setTextSize('e', 19.5)
    setTextAlignment('e', 'middle')
    addLuaText('e', true)

    makeLuaText('esc', 'Press [ESCAPE] to Exit the song', 0, 655);
    setTextSize('esc', 18)
    setTextColor('esc', red)
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
    setTextColor('warn', red)
    addLuaText('warn', true)

    makeLuaText('warn2', 'Are you sure you want to proceed?', 0, 646)
    setTextSize('warn2', 19)
    setTextColor('warn2', red)
    addLuaText('warn2', true)

    makeLuaText('question', '[K] or [L]', 0, 735)
    setTextSize('question', 30)
    setTextColor('question', red)
    addLuaText('question', true)

    makeLuaText('sidenote', 'SideNote: [K] = Normal and [L] = Pixel', 0, 655)
    setTextSize('sidenote', 16)
    setTextColor('sidenote', red)
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
    setObjectCamera('blacklol', 'camHUD')
    setProperty('blacklol.alpha', 0.3)
    addLuaSprite('blacklol')

    -- GamePlay Background --

    makeLuaSprite('BFblacklol', nil, 730, 0)
    setObjectCamera('BFblacklol', 'camHUD')
    setProperty('BFblacklol.alpha', BLOpacity)
    addLuaSprite('BFblacklol', false)

    makeLuaSprite('DADblacklol', nil, 90, 0)
    setObjectCamera('DADblacklol', 'camHUD')
    setProperty('DADblacklol.alpha', BLOpacity)
    addLuaSprite('DADblacklol', false)

    -- NoteSkin Background -- 

    makeLuaSprite('playerlol', nil, 220, 100)
    setObjectCamera('playerlol', 'camHUD')
    setProperty('playerlol.alpha', 0.3)
    addLuaSprite('playerlol')

    makeLuaSprite('opponentlol', nil, 220, 250)
    setObjectCamera('opponentlol', 'camHUD')
    setProperty('opponentlol.alpha', 0.3)
    addLuaSprite('opponentlol')

    -- Setting BG --

    makeLuaSprite('optionlol', nil, 220, 400)
    setObjectCamera('optionlol', 'camHUD')
    setProperty('optionlol.alpha', 0.3)
    addLuaSprite('optionlol')

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

    -- HitSounds -- 

    makeLuaText('hs', '('..HSName[hss]..')', 0, 400);
    setTextSize('hs', 16)
    addLuaText('hs', true)

    -- Functions --

    onVisibleAlpha()
    onTweenXY()
    onPrecaching() 
    onBlackWhite(black) 
end    

function onCreatePost()
    onHideHealthBar(false) 
end   
  
local Activate = true;
local allowCountdown = false;
function onStartCountdown()
    if not allowCountdown then -- Block the first countdown
        allowCountdown = true;         
        if Activate == true then
            playMusic('breakfast-Bsides', 0.5, true)
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
    onHideHealthBar(true)  
end 

local WhiteBlack = false;    -- It changes the BG Notes to white or black, also [true] is white and black is [false]
local AnnoyingSound = false; -- Plays a HitSounds when true
local BGNote = false;        -- Make's a Backround behind the notes! (For concentrating)
local GetOGNotes = false;    -- Dont use this only if you dont want the NoteSkins from that stage
local ChangeScroll = false;  -- Changes scroll on the opponent depending on your scroll
local AllToggles = false;    -- If [true] then all the toggles will be "turn on"

-- Set these things into [true] if you want it to be default
-- Also if you want to Change the NoteSkin to be default set ns1 or ns2 in to any number
-- Same works in PixelSkins, set ps1 and ps2 to any number
-- But there's a limit to changing these to any number just go to the onReset()
-- To disable this script just set the (GetOGNotes) and (SkipThis) into [true], or you can just remove this script

local SkipThis = false; -- If you want to skip

-- if [false] wont skip, if [true] it's skip

local ns1 = 4 -- BF
local ns2 = 1 -- DAD

local ps1 = 1 -- BF (Pixel) 
local ps2 = 1 -- BF (Pixel)

BLOpacity = 0.5 -- Opacity of the BGNote 

-- [0.5 or higer] (Optional)
-- [0.5] (Recommended)
-- [0.4 or below] (Not Recommended)

hs = 'hitsounds/'

HitSounds = {'hitsound', hs..'Hit Alt', hs..'Cherry HitSounds', hs..'Snare Hit'} -- dumb hitsounds
HSName = {'Defualt', 'Hit Alt', 'Cherry HitSounds', 'Snare Hit'} -- name of hitsounds

hss = 1 -- just change the number lol
function goodNoteHit(id, direction, noteType, isSustainNote)  
    if AnnoyingSound and not isSustainNote then
        playSound(HitSounds[hss], 0.5, false)
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

black = '000000'
green = '00ff00'
red = 'ff0000'
white = 'ffffff'

local count = 1
local Answer = false;
function onUpdate(elapsed)
    if SkipThis == true then
        startCountdown()
        onRemove()
    end

    if Activate == true then
        onCustomNotes()
        onPlus()
        onReset()

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not SkipThis then
            if Activate == true then
                if not flashingLights then
                    cameraFlash('funny', white, 0.7, false) 
                end       
                playSound('ToggleJingle')
                playMusic('')  

                startCountdown()
                onHideHealthBar(true) 
                onRemove()
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

        if AllToggles == true then
            doTweenColor('qColor', 'q', green, 0.1, 'linear')

            doTweenColor('e1Color', 'e1', green, 0.1, 'linear')
            doTweenColor('e2Color', 'e2', green, 0.1, 'linear')
            doTweenColor('e3Color', 'e3', green, 0.1, 'linear')
            doTweenColor('e4Color', 'e4', green, 0.1, 'linear')

            GetOGNotes = true;
            AnnoyingSound = true;
            BGNote = true;
            ChangeScroll = true;   
        end    

        if WhiteBlack == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = true;
            setTextString('h', "Press [H] to Change BG to Black")
            onBlackWhite(white) 
        elseif WhiteBlack == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = false;
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(black) 
        end

        if WhiteBlack == true then
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(white) 
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
            doTweenColor('e1Color', 'e1', green, 0.1, 'linear')
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

        if AnnoyingSound == true then
            doTweenColor('e2Color', 'e2', green, 0.1, 'linear') 
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
            doTweenColor('e3Color', 'e3', green, 0.1, 'linear')
            for i = 0,7 do
                setPropertyFromGroup('opponentStrums', i, 'downScroll', true)
                setPropertyFromGroup('opponentStrums', i, 'y', 570)
        
                if not middlescroll then
                    setPos('healthBar', {650, 620})
                    setPos('healthBarBG', {nil, 616})
                    setPos('iconP1', {nil, 550})
                    setPos('iconP2', {nil, 550})
                    setPos('scoreTxt', {300, 650})
                    setTextSize('scoreTxt', 18) 

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

        if BGNote == true then
            doTweenColor('e4Color', 'e4', green, 0.1, 'linear')
        end    
    end      
    
    if Activate == false then
        if BGNote == true then
            setProperty('BFblacklol.visible', true)
            setProperty('DADblacklol.visible', true) 
    
            if middlescroll then
                removeLuaSprite('DADblacklol', true)
                setPos('BFblacklol', {410, nil})
                
                if ChangeScroll == true then
                    setPos('healthBar', {343.5, nil})
                    setPos('healthBarBG', {339.5, nil})
                    setPos('iconP1', {610, nil})
                    setPos('iconP2', {509, nil})
                    setPos('scoreTxt', {0, nil})
                    setTextSize('scoreTxt', 20)  
                end    
            end  
            Activate = gaming -- no more lag
        end
    end 

    if getProperty('inCutscene') == true then
        Activate = false;
        playMusic('')
        onRemove()
    end  

    if botPlay and Visible then
        setProperty('botplayTxt.visible', false)
    end
    if botPlay and not Visible then
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
function onCustomNotes()
    if SkipThis == false then
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
end    

sn = 'NoteSkin: '

NoteText = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy'}
NoteTextDAD = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy'}

PixelText = {sn..'Defualt', sn..'NES', sn..'DokiDoki'}
PixelTextDAD = {sn..'Defualt', sn..'NES', sn..'DokiDoki'}
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

function onHideHealthBar(boolean) -- soooo much better
    if not hideHud then
        setProperty('scoreTxt.visible', boolean) -- uhh ignore the green color, i dunno wut color it is
        setProperty('healthBar.visible', boolean)
        setProperty('healthBarBG.visible', boolean)
        setProperty('iconP1.visible', boolean)
        setProperty('iconP2.visible', boolean) 
    end    
end  

function onBlackWhite(color)  
    makeGraphic('blacklol', 400, 1000, color)
    makeGraphic('playerlol', 400, 100, color)
    makeGraphic('opponentlol', 400, 100, color)
    makeGraphic('optionlol', 400, 350, color)
    makeGraphic('BFblacklol', 450, 1000, color)
    makeGraphic('DADblacklol', 450, 1000, color)
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

NoteType = {
    ['No Animation'] = true,
    ['Alt Animation'] = true,
    ['Hey!'] = true,
    ['GF Sing'] = true,
    [''] = true
}

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
        if NoteType[getPropertyFromGroup('notes', i, 'noteType')] and GetOGNotes == false then
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
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.P') then
            Answer = semifalse;

            setTextString('Note', '')
            setTextString('NoteDAD', '')

            doTweenAlpha('preAlpha', 'preview', 0, 0.1, 'linear') 
            doTweenAlpha('preDADAlpha', 'previewDAD', 0, 0.1, 'linear')

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 0, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 0, 0.1, 'linear')

            WarningScreen(1)   
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.L') and Answer == semifalse then
            Answer = true;
            playSound('confirmMenu', 0.4, false)  

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 1, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 1, 0.1, 'linear')
    
            WarningScreen(0) 
        elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.K') and Answer == semifalse then 
            Answer = false;
            playSound('cancelMenu', 0.4, false)

            doTweenAlpha('preAlpha', 'preview', 1, 0.1, 'linear') 
            doTweenAlpha('preDADAlpha', 'previewDAD', 1, 0.1, 'linear')

            doTweenAlpha('PixelpreAlpha', 'Pixelpreview', 0, 0.1, 'linear') 
            doTweenAlpha('PixelpreDADAlpha', 'PixelpreviewDAD', 0, 0.1, 'linear')

            WarningScreen(0)   
        end
    end    
end    

function WarningScreen(opacity)
    doTweenAlpha('warnAplha', 'warn', opacity, 0.5, 'linear')
    doTweenAlpha('warnAplha2', 'warn2', opacity, 0.5, 'linear')
    doTweenAlpha('questionAplha', 'question', opacity, 0.5, 'linear')
    doTweenAlpha('sidenoteAplha', 'sidenote', opacity, 0.5, 'linear')
end    

function onVisibleAlpha()
    setProperty('BFblacklol.visible', false)
    setProperty('DADblacklol.visible', false)

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
    doTweenX('spaceX', 'space', 430, 0.1, 'linear') -- Only X lol

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

    doTweenY('hsY', 'hs', 480, 0.1, 'linear')
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

    precacheMusic('breakfast-Bsides')
end

function onRemove() 
    removeLuaSprite('preview', true);
    removeLuaSprite('previewDAD', true);

    removeLuaSprite('Pixelpreview', true);
    removeLuaSprite('PixelpreviewDAD', true);

    removeLuaSprite('blacklol', true);
    removeLuaSprite('playerlol', true);
    removeLuaSprite('opponentlol', true);
    removeLuaSprite('optionlol', true);

    removeLuaText('y', true);
    removeLuaText('t', true);

    removeLuaText('g', true);
    removeLuaText('f', true);

    removeLuaText('e', true);
    removeLuaText('space', true);

    removeLuaText('Note', true);
    removeLuaText('NoteDAD', true);

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
    removeLuaText('hs', true);

    removeLuaText('e1', true);
    removeLuaText('e2', true);
    removeLuaText('e3', true);
    removeLuaText('e4', true);
end 
