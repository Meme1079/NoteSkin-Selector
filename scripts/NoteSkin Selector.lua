function onCreate()
    onShortCutText('space', 'Press [SPACE] to Start', 630, 410, true)
    onTextPrefix('space', hex[4], 30, 'other')

    onShortCutText('t', 'Press [T] to Change NoteSkin', 660, 150, true)
    onTextPrefix('t', hex[4], 20, 'other')

    onShortCutText('y', 'Press [Y] to Check Note Splashes', 635, 120, true)
    onTextPrefix('y', hex[4], 20, 'other')

    onShortCutText('f', 'Press [F] to Change NoteSkin', 660, 300, true)
    onTextPrefix('f', hex[4], 20, 'other')

    onShortCutText('g', 'Press [G] to Check Note Splashes', 635, 270, true)
    onTextPrefix('g', hex[4], 20, 'other')

    onShortCutText('e', 'Press [E] to Change Both NoteSkin', 645, 380, true)
    onTextPrefix('e', hex[4], 19.5, 'other')

    onShortCutText('esc', 'Press [ESCAPE] to Exit the song', 655, nil, true)
    onTextPrefix('esc', hex[3], 18, 'other')

    onShortCutText('Arrow', '>', 228, 460, nil, true)
    onTextPrefix('Arrow', hex[4], 16, 'other')

    onShortCutText('Message1', "You can't use Opponent Notes", 680, 450, nil)
    onTextPrefix('Message1', hex[3], 17, 'other')
    setProperty('Message1.visible', false)

    onShortCutText('Message2', 'while disabiling the OpponentStrums', 650, 470, nil)
    onTextPrefix('Message2', hex[3], 17, 'other')
    setProperty('Message2.visible', false)

    -- Setting --

    onShortCutText('h', 'Press [H] to Change BG to White', 230, 410, true)
    onTextPrefix('h', hex[4], 18, 'other')

    onShortCutText('q', 'Press [Q] to Select All the Toggles', 225, 435, true)
    onTextPrefix('q', hex[4], 18.5, 'other')

    onShortCutText('e1', 'Toggle Get the NoteSkin in the stage', 248, 460, true)
    onTextPrefix('e1', hex[4], 16, 'other')

    onShortCutText('e2', 'Toggle Hitsounds', 248, 480, true)
    onTextPrefix('e2', hex[4], 16, 'other')

    onShortCutText('e3', 'Toggle Change Opponent Scroll', 248, 500, true)
    onTextPrefix('e3', hex[4], 16, 'other')

    onShortCutText('e4', 'Toggle BG behind the Notes', 248, 520, true)
    onTextPrefix('e4', hex[4], 16, 'other')

    -- Background --

    makeLuaSprite('blacklol', nil, 630, 0)  -- if you don't know what nil is, it's means no value 
    setObjectCamera('blacklol', 'other')
    setProperty('blacklol.alpha', 0.3)
    addLuaSprite('blacklol')

    -- GamePlay Background --

    makeLuaSprite('BFblacklol', nil, 730, 0)
    setObjectCamera('BFblacklol', 'other')
    setProperty('BFblacklol.alpha', BLOpacity)
    addLuaSprite('BFblacklol', false)

    makeLuaSprite('DADblacklol', nil, 90, 0)
    setObjectCamera('DADblacklol', 'other')
    setProperty('DADblacklol.alpha', BLOpacity)
    addLuaSprite('DADblacklol', false)

    setProperty('BFblacklol.visible', false)
    setProperty('DADblacklol.visible', false)

    -- NoteSkin Background -- 

    BGX = 220

    makeLuaSprite('playerlol', nil, BGX, 100)
    setObjectCamera('playerlol', 'other')
    setProperty('playerlol.alpha', 0.3)
    addLuaSprite('playerlol')

    makeLuaSprite('opponentlol', nil, BGX, 250)
    setObjectCamera('opponentlol', 'other')
    setProperty('opponentlol.alpha', 0.3)
    addLuaSprite('opponentlol')

    makeLuaSprite('optionlol', nil, BGX, 400)
    setObjectCamera('optionlol', 'other')
    setProperty('optionlol.alpha', 0.3)
    addLuaSprite('optionlol')

    -- Text Thingy --

    ThingyX = 218

    onShortCutText('pl', 'Player', ThingyX, 60, true)
    onTextPrefix('pl', '31b1d1', 30, 'other')

    onShortCutText('op', 'Opponent', ThingyX, 210, true)
    onTextPrefix('op', 'af66ce', 30, 'other')

    onShortCutText('se', 'Settings', ThingyX, 360, true)
    onTextPrefix('se', hex[4], 30, 'other')

    -- Note Text --

    NoteX = 695

    onShortCutText('Note', 'NoteSkin: Normal', NoteX, 80, true)
    onTextPrefix('Note', hex[4], 25, 'other')

    onShortCutText('NoteDAD', 'NoteSkin: Normal', NoteX, 230, true)
    onTextPrefix('NoteDAD', hex[4], 25, 'other')

    -- HitSounds -- 

    onShortCutText('hs', '('..HSName[hss]..')', 400, 480, true)
    onTextPrefix('hs', hex[4], 16, 'other')

    -- Functions --

    onPrecaching() 
    onBlackWhite(hex[1])
    addLuaScript('scripts/other/Check Version') 
end    

function onCreatePost()
    onHideHealthBar(false) 
end   
  
local Activate = true;
local Visible = true;
local allowCountdown = false;
function onStartCountdown()
    if not allowCountdown then -- Block the first countdown
        allowCountdown = true;     
        if Activate and not MuteMusic then
            playMusic('offsetSong', 0.5, true)
        end  
        if SkipThis then
            startCountdown()
            onRemove()
        end
        return Function_Stop; 
    end 
    Activate = false;
    Visible = false;  
    return Function_Continue;
end 

function onSongStart() 
    onRemove() 
    onHideHealthBar(true)
    removeLuaScript('scripts/other/Check Version')
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

SkipThis = false; -- If you want to skip
MuteMusic = false; -- It just mute the music

-- if [false] wont skip, if [true] it's skip

local ns1 = 1 -- BF
local ns2 = 1 -- DAD

local ps1 = 1 -- BF (Pixel) 
local ps2 = 1 -- BF (Pixel)

BLOpacity = 0.5 -- Opacity of the BGNote 

-- [0.5 or higer] (Optional)
-- [0.5] (Recommended)
-- [0.5 or below] (Not Recommended)

local hs = 'hitsounds/'

HitSounds = {'hitsound', hs..'Hit Alt', hs..'Cherry HitSounds', hs..'Snare Hit'} -- dumb hitsounds
HSName = {'Defualt', 'Hit Alt', 'Cherry HitSounds', 'Snare Hit'} -- name of hitsounds

hss = 1 -- just change the number lol
function goodNoteHit(id, direction, noteType, isSustainNote)  
    local hitsoundVolume = getPropertyFromClass('ClientPrefs', 'hitsoundVolume')
    local ConvertVolume = '0.'..hitsoundVolume

    if AnnoyingSound and not isSustainNote then
        playSound(HitSounds[hss], ConvertVolume, false)
    end  
    if hitsoundVolume == 1 then
        ConvertVolume = 1
    end
end  

function onShortCutText(obj, text, x, y, bool)
    makeLuaText(obj, text, nil, x, y)
    addLuaText(obj, bool)
end

function onTextPrefix(obj, color, size, cam)
    setTextColor(obj, color)
    setTextSize(obj, size)
    setObjectCamera(obj, cam)
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

NoteType = {['No Animation'] = true,['Alt Animation'] = true,['Hey!'] = true,['GF Sing'] = true,[''] = true}
hex = {'000000', '00ff00', 'ff0000', 'ffffff'}

local count = 1
local ifPixelNote = false;
local SplashCheck = false;
function onUpdate(elapsed)
    inCutscene = getProperty('inCutscene')
    isPixelStage = getPropertyFromClass('PlayState', 'isPixelStage')
    checkDadStrums = getPropertyFromClass('ClientPrefs', 'opponentStrums')

    if Activate then
        onCustomNotes() 
        onPlus() 
        onReset()
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not SkipThis then
            if Activate then
                if not flashingLights then
                    cameraFlash('funny', hex[4], 0.7, false) 
                end       
                playSound('ToggleJingle')
                playMusic('')  

                startCountdown()
                onHideHealthBar(true) 
                onRemove()
            end
            Activate = false; 
        end 
        
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') then
            endSong()      
        end   

        if not AllToggles and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = true;
            doTweenColor('qColor', 'q', hex[2], 0.1, 'linear')
            playSound('confirmMenu', 0.4, false)  

            onDumbTogglesColor(hex[2])
            onDumbToggles(true)
        elseif AllToggles and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = false;
            doTweenColor('qColor', 'q', hex[4], 0.1, 'linear')
            playSound('cancelMenu', 0.4, false)  

            onDumbTogglesColor(hex[4])
            onDumbToggles(false) 
        elseif AllToggles then    
            doTweenColor('qColor', 'q', hex[2], 0.1, 'linear')

            onDumbTogglesColor(hex[4])
            onDumbToggles(true)
        end   

        if not WhiteBlack and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = true;
            setTextString('h', "Press [H] to Change BG to Black")
            onBlackWhite(hex[4]) 
        elseif WhiteBlackand and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = false;
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(hex[1]) 
        elseif WhiteBlack then
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(hex[4]) 
        end  

        if count == 1 then
            if not GetOGNotes and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                GetOGNotes = true;
                doTweenColor('e1Color', 'e1', hex[2], 0.1, 'linear')
                playSound('confirmMenu', 0.4, false) 
            elseif GetOGNotes and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                GetOGNotes = false;
                doTweenColor('e1Color', 'e1', hex[4], 0.1, 'linear')
                playSound('cancelMenu', 0.4, false)
            end    
        elseif count == 2 then
            if not AnnoyingSound and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                AnnoyingSound = true;
                doTweenColor('e2Color', 'e2', hex[2], 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif AnnoyingSound and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then  
                AnnoyingSound = false;
                doTweenColor('e2Color', 'e2', hex[4], 0.1, 'linear')
                playSound('cancelMenu', 0.4, false)
            end 
        elseif count == 3 then
            if not ChangeScroll and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                ChangeScroll = true;
                doTweenColor('e3Color', 'e3', hex[2], 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif ChangeScroll and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then    
                ChangeScroll = false;
                doTweenColor('e3Color', 'e3', hex[4], 0.1, 'linear')
                playSound('cancelMenu', 0.4, false) 
            end
        elseif count == 4 then
            if not BGNote and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                BGNote = true;
                doTweenColor('e4Color', 'e4', hex[2], 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif BGNote and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then    
                BGNote = false;
                doTweenColor('e4Color', 'e4', hex[4], 0.1, 'linear')
                playSound('cancelMenu', 0.4, false) 
            end           
        end   

        if GetOGNotes then            
            doTweenColor('e1Color', 'e1', hex[2], 0.1, 'linear')
            for i = 0, getProperty('notes.length')-1 do
                if NoteType[getPropertyFromGroup('notes', i, 'noteType')] then
                    getPropertyFromGroup('notes', i, 'texture');   
                    getPropertyFromGroup('notes', i, 'noteSplashTexture'); 
                    
                    getPropertyFromGroup('playerStrums', i, 'texture');
                    getPropertyFromGroup('opponentStrums', i, 'texture');  
                end    
            end
        end    

        if AnnoyingSound then
            doTweenColor('e2Color', 'e2', hex[2], 0.1, 'linear') 
        end     
        
        if ChangeScroll then
            doTweenColor('e3Color', 'e3', hex[2], 0.1, 'linear')
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

        if not ChangeScroll then
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

        if BGNote then
            doTweenColor('e4Color', 'e4', hex[2], 0.1, 'linear')
        end    
    end      
    
    if not Activate then
        if BGNote then
            setProperty('BFblacklol.visible', true)
            setProperty('DADblacklol.visible', true) 
    
            if middlescroll then
                removeLuaSprite('DADblacklol', true)
                setPos('BFblacklol', {410, nil})
                
                if ChangeScroll then
                    setPos('healthBar', {343.5, nil})
                    setPos('healthBarBG', {339.5, nil})
                    setPos('iconP1', {610, nil})
                    setPos('iconP2', {509, nil})
                    setPos('scoreTxt', {0, nil})
                    setTextSize('scoreTxt', 20)  
                end    
            end 

            if not checkDadStrums then 
                removeLuaSprite('DADblacklol', true)
            end
            Activate = gaming -- no more lag
        end
    end 

    if inCutscene then
        Activate = false;
        playMusic('')
        onRemove()
    end  

    if not checkDadStrums then
        setProperty('Message1.visible', true)
        setProperty('Message2.visible', true)

        setTextColor('f', hex[3])
        setTextColor('g', hex[3])
    end

    if not noResetButton then
        setPropertyFromClass('ClientPrefs', 'noResetButton', true)
        if getSongPosition() == 1 then
            setPropertyFromClass('ClientPrefs', 'noResetButton', false)
        end
    end

    if botPlay then
        if Visible then
            setProperty('botplayTxt.visible', false)
        elseif not Visible then
            setProperty('botplayTxt.visible', true)    
        end
    end

    if isPixelStage then
        ifPixelNote = true
    end

    if not SplashCheck then -- after 2 months this is the answer 
        onCustomSplash()
        onSplashPrefix()
        SplashCheck = true;
    end

    if AnnoyingSound then
        hitsoundDisabled = false
    else
        hitsoundDisabled = true
    end
end 

local PreX = 255
local PreY = 90
local PreDADY = 240

local nse = 'noteseen/'
local pUI = 'pixelUI/noteseen/'

local NoteString = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes', nse..'dokidoki notes'}
local NoteStringDAD = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes', nse..'dokidoki notes'}

local PixelString = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes', pUI..'Sonic8bit notes'}
local PixelStringDAD = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes', pUI..'Sonic8bit notes'}
function onCustomNotes()
    onNoteText()
    if not ifPixelNote then
        for i = 1, #NoteString do
            makeLuaSprite('preview', NoteString[ns1], PreX, PreY)
            setObjectCamera('preview', 'other')
            scaleObject('preview', 0.5, 0.5)
            addLuaSprite('preview', false)
        end  

        for i = 1, #NoteStringDAD do
            makeLuaSprite('previewDAD', NoteStringDAD[ns2], PreX, PreDADY)
            setObjectCamera('previewDAD', 'other')
            scaleObject('previewDAD', 0.5, 0.5)
            addLuaSprite('previewDAD', false)
        end 
    end  
    
    if ifPixelNote then
        for i = 1, #PixelString do
            makeLuaSprite('preview', PixelString[ps1], PreX, PreY)
            setObjectCamera('preview', 'other')
            setProperty('preview.antialiasing', false)
            scaleObject('preview', 0.5, 0.5)
            addLuaSprite('preview', false)
        end  

        for i = 1, #PixelStringDAD do
            makeLuaSprite('previewDAD', PixelStringDAD[ps2], PreX, PreDADY)
            setObjectCamera('previewDAD', 'other')
            setProperty('previewDAD.antialiasing', false)
            scaleObject('previewDAD', 0.5, 0.5)
            addLuaSprite('previewDAD', false)
        end 
    end        
end    

local sn = 'NoteSkin: '

local NoteText = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'DokiDoki'}
local NoteTextDAD = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'DokiDoki'}

local PixelText = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'Sonic 8Bit'}
local PixelTextDAD = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'Sonic 8Bit'}
function onNoteText()
    if not ifPixelNote then
        for i = 1, #NoteText do
            setTextString('Note', NoteText[ns1])
        end
        for i = 1, #NoteTextDAD do
            setTextString('NoteDAD', NoteText[ns2])
        end
    end 
    
    if ifPixelNote then
        for i = 1, #PixelText do
            setTextString('Note', PixelText[ps1])
        end
        for i = 1, #PixelTextDAD do
            setTextString('NoteDAD', PixelText[ps2])
        end
    end  
end

function onCustomSplash()
    if Activate and not SkipThis then
        if not ifPixelNote then
            for i = 1, #SplashAssets do
                makeAnimatedLuaSprite('Splashpreview', SplashAssets[ns1], 100, 1230)
                setObjectCamera('Splashpreview', 'other')
                scaleLuaSprite('Splashpreview', 0.5, 0.5)
                addLuaSprite('Splashpreview', true) 
            end     
        
            for i = 1, #SplashAssetsDAD do
                makeAnimatedLuaSprite('SplashpreviewDAD', SplashAssetsDAD[ns2], 100, 1230)
                setObjectCamera('SplashpreviewDAD', 'other')
                scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
                addLuaSprite('SplashpreviewDAD', true)
            end
        end
    
        if ifPixelNote then
            for i = 1, #PixelSplashAssets do
                makeAnimatedLuaSprite('Splashpreview', PixelSplashAssets[ps1], 100, 1230)
                setObjectCamera('Splashpreview', 'other')
                setProperty('Splashpreview.antialiasing', false)
                scaleLuaSprite('Splashpreview', 0.5, 0.5)
                addLuaSprite('Splashpreview', true) 
            end     
        
            for i = 1, #PixelSplashAssetsDAD do
                makeAnimatedLuaSprite('SplashpreviewDAD', PixelSplashAssetsDAD[ps2], 100, 1230)
                setObjectCamera('SplashpreviewDAD', 'other')
                setProperty('SplashpreviewDAD.antialiasing', false)
                scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
                addLuaSprite('SplashpreviewDAD', true)
            end
        end
    end
end

local n1 = 1
local n2 = 1

local n1DAD = 1
local n2DAD = 1
function onSplashPrefix()
    if Activate and not SkipThis then
        SplashX = {290, 375, 210, 465}
        SplashDADX = {290, 375, 210, 465}
                        
        SplashY = 60
        SplashDADY = 210
    
        NamePrefix1 = {'blue1', 'green1', 'purple1', 'red1'}
        NamePrefix2 = {'blue2', 'green2', 'purple2', 'red2'} 
           
        Splashes = {
            [1] = function()
                for i = 1, #SplashAssets or #PixelSplashAssets do
                    objectPlayAnimation('Splashpreview', NamePrefix1[n1], false)
                    objectPlayAnimation('Splashpreview', NamePrefix2[n1], false)
                    setProperty('Splashpreview.x', SplashX[n2])
                    setProperty('Splashpreview.y', SplashY)
                end    
            end,
            [2] = function()
                for i = 1, #SplashAssetsDAD or #PixelSplashAssetsDAD do
                    objectPlayAnimation('SplashpreviewDAD', NamePrefix1[n1DAD], false)
                    objectPlayAnimation('SplashpreviewDAD', NamePrefix2[n1DAD], false)
                    setProperty('SplashpreviewDAD.x', SplashDADX[n2DAD])
                    setProperty('SplashpreviewDAD.y', SplashDADY)
                end    
            end,    
        }  
        
        for i = 1, #SplashAssets or #PixelSplashAssets do
            luaSpriteAddAnimationByPrefix('Splashpreview', 'blue1', 'note splash blue 1', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'green1', 'note splash green 1', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'purple1', 'note splash purple 1', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'red1', 'note splash red 1', 24, false);
                            
            luaSpriteAddAnimationByPrefix('Splashpreview', 'blue2', 'note splash blue 2', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'green2', 'note splash green 2', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'purple2', 'note splash purple 2', 24, false);
            luaSpriteAddAnimationByPrefix('Splashpreview', 'red2', 'note splash red 2', 24, false);
        end
        for i = 1, #SplashAssetsDAD or #PixelSplashAssetsDAD do
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'blue1', 'note splash blue 1', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'green1', 'note splash green 1', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'purple1', 'note splash purple 1', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'red1', 'note splash red 1', 24, false);
                            
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'blue2', 'note splash blue 2', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'green2', 'note splash green 2', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'purple2', 'note splash purple 2', 24, false);
            luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'red2', 'note splash red 2', 24, false);
        end
    end
end 

-- uhh these dumb function are for campcating the code
local HealthHUD = {'scoreTxt', 'healthBar', 'healthBarBG', 'iconP1', 'iconP2'}
function onHideHealthBar(bool) 
    if not hideHud then
        for i = 1, #HealthHUD do
            setProperty(HealthHUD[i]..'.visible', bool) -- haha no green thingy
        end
    end    
end  

function onDumbToggles(bool)
    GetOGNotes = bool;
    AnnoyingSound = bool;
    BGNote = bool;
    ChangeScroll = bool;
end

function onBlackWhite(color)  
    makeGraphic('blacklol', 400, 1000, color)
    makeGraphic('playerlol', 400, 100, color)
    makeGraphic('opponentlol', 400, 100, color)
    makeGraphic('optionlol', 400, 350, color)
    makeGraphic('BFblacklol', 450, 1000, color)
    makeGraphic('DADblacklol', 450, 1000, color)
end  

local TogsAlt = {'e1', 'e2', 'e3', 'e4'}
local TogsTag = {'e1Color', 'e2Color', 'e3Color', 'e4Color'}
function onDumbTogglesColor(color)
    for i = 1, #TogsTag or #TogsAlt do
        doTweenColor(TogsTag[i], TogsAlt[i], color, 0.1, 'linear')
    end
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

    if not ifPixelNote then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            SplashCheck = false;
            ns1 = ns1 + 1
        end  

        if checkDadStrums then
            if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
                playSound('scrollMenu', 0.5, false)
                SplashCheck = false;
                ns2 = ns2 + 1
            end 
        elseif not checkDadStrums then
            if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
                playSound('deniedMOMENT', 0.5, false)
            end 
        end

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
            playSound('scrollMenu', 0.5, false)
            SplashCheck = false;
            ns1 = ns1 + 1

            if checkDadStrums then
                ns2 = ns2 + 1
            end
        end  
    end    

    if ifPixelNote then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            SplashCheck = false;
            ps1 = ps1 + 1
        end  
    
        if checkDadStrums then
            if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
                playSound('scrollMenu', 0.5, false)
                SplashCheck = false;
                ps2 = ps2 + 1
            end  
        elseif not checkDadStrums then
            if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
                playSound('deniedMOMENT', 0.5, false)
            end  
        end

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
            playSound('scrollMenu', 0.5, false)
            SplashCheck = false;
            ps1 = ps1 + 1

            if checkDadStrums then
                ps2 = ps2 + 1
            end
        end 
    end  

    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
        Splashes[1]()
        n1 = n1 + 1
        n2 = n2 + 1
    end

    if checkDadStrums then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
            Splashes[2]()
            n1DAD = n1DAD + 1
            n2DAD = n2DAD + 1
        end
    end
end    

local Nor = 6 -- Normal
local Pix = 5 -- Pixel
function onReset()
    if ns1 == Nor then
        ns1 = 1
    elseif ns2 == Nor then
        ns2 = 1
    end  
    
    if ps1 == Pix then
        ps1 = 1
    elseif ps2 == Pix then
        ps2 = 1
    end  
    -- Note texture

    if s1 == Nor then
        s1 = 1
    elseif s2 == Nor then
        s2 = 1
    end

    if sp1 == Pix then
        sp1 = 1
    elseif sp2 == Pix then
        sp2 = 1
    end
    -- Splash texture

    if n1 == 5 then
        n1 = 1
    elseif n2 == 5 then 
        n2 = 1
    end

    if n1DAD == 5 then
        n1DAD = 1
    elseif n2DAD == 5 then
        n2DAD = 1
    end
    -- Splash Prefixes

    if count == 5 then
        setPos('Arrow', {nil, 460})
        pos = 460
        count = 1
    elseif count == 0 then
        setPos('Arrow', {nil, 520})
        pos = 520
        count = 4
    end    
end

local nw = 'notesplash/weeb/'
local npl = 'notesplash/'

local ns = 'noteskin/'

NoteAssets = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets', ns..'dokidoki_Normal_assets'}
NoteAssetsDAD = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets', ns..'dokidoki_Normal_assets'}

SplashAssets = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes', npl..'dokidokiSplashes'}
SplashAssetsDAD = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes', npl..'dokidokiSplashes'}

PixelAssets = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets', ns..'Sonic8bit_assets'}
PixelAssetsDAD = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets', ns..'Sonic8bit_assets'}

PixelSplashAssets = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes', nw..'Sonic8bitSplashes'}
PixelSplashAssetsDAD = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes', nw..'Sonic8bitSplashes'}
function onUpdatePost(elapsed)
    if not Activate then
        for i = 0, getProperty('notes.length')-1 do
            if NoteType[getPropertyFromGroup('notes', i, 'noteType')] and not GetOGNotes then
                if getPropertyFromGroup('notes', i, 'mustPress') then -- Player Section
                    if not ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', NoteAssets[ns1]);  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssets[ns1]);
                    end
                    if ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', PixelAssets[ps1]);  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssets[ps1]);  
                    end    
                elseif not getPropertyFromGroup('notes', i, 'mustPress') then -- Opponent Section
                    if not ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', NoteAssetsDAD[ns2]);  
                    end
                    if ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', PixelAssetsDAD[ps2]);  
                    end
                end
            end
        end   
        
        for i = 0,4,1 do
            if not GetOGNotes then
                if not ifPixelNote then
                    setPropertyFromGroup('playerStrums', i, 'texture', NoteAssets[ns1]);
                    setPropertyFromGroup('opponentStrums', i, 'texture', NoteAssetsDAD[ns2]);  
                end
                if ifPixelNote then
                    setPropertyFromGroup('playerStrums', i, 'texture', PixelAssets[ps1]);
                    setPropertyFromGroup('opponentStrums', i, 'texture', PixelAssetsDAD[ps2]);   
                end   
            end
        end
    end
end    

function onPrecaching()
    for i = 1, #NoteAssets or #NoteAssetsDAD or #PixelAssets or #PixelAssetsDAD do -- soo much better
        precacheImage(NoteAssets[i])
        precacheImage(NoteAssetsDAD[i])
        precacheImage(PixelAssets[i])
        precacheImage(PixelAssetsDAD[i])
    end
    for i = 1, #SplashAssets or #SplashAssetsDAD or #PixelSplashAssets or #PixelSplashAssetsDAD do
        precacheImage(SplashAssets[i])
        precacheImage(SplashAssetsDAD[i])
        precacheImage(PixelSplashAssets[i])
        precacheImage(PixelSplashAssetsDAD[i])
    end
    for i = 1, #HitSounds do
        precacheSound(HitSounds[i])
    end
    
    precacheSound('scrollMenu')
    precacheSound('ToggleJingle')  
    precacheMusic('offsetSong')
end

local TextCon = {'y', 't', 'g', 'f', 'e', 'h', 'q', 'hs', 'space', 'esc'}
local Togs = {'e1', 'e2', 'e3', 'e4', 'Arrow'}
local BGlols = {'blacklol', 'playerlol', 'opponentlol', 'optionlol'}
local Other = {'Note', 'NoteDAD', 'pl', 'op', 'se', 'Message1', 'Message2'}
function onRemove() 
    for i = 1, #TextCon or #Togs or #Other or #BGlols do
        removeLuaText(TextCon[i], true)
        removeLuaText(Togs[i], true)
        removeLuaText(Other[i], true)
        removeLuaSprite(BGlols[i], true)
    end

    removeLuaSprite('preview', true)
    removeLuaSprite('previewDAD', true)

    removeLuaSprite('Splashpreview', true)
    removeLuaSprite('SplashpreviewDAD', true)
end 
