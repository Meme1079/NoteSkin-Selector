function onCreate()
    onShortCutText('space', 'Press [SPACE] to Start', 630, 410, true)
    onTextPrefix('space', hex[4], 30, 'camHUD')

    onShortCutText('t', 'Press [T] to Change NoteSkin', 660, 150, true)
    onTextPrefix('t', hex[4], 20, 'camHUD')

    onShortCutText('y', 'Press [Y] to Check Note Splashes', 635, 120, true)
    onTextPrefix('y', hex[4], 20, 'camHUD')

    onShortCutText('f', 'Press [F] to Change NoteSkin', 660, 300, true)
    onTextPrefix('f', hex[4], 20, 'camHUD')

    onShortCutText('g', 'Press [G] to Check Note Splashes', 635, 270, true)
    onTextPrefix('g', hex[4], 20, 'camHUD')

    onShortCutText('e', 'Press [E] to Change Both NoteSkin', 645, 380, true)
    onTextPrefix('e', hex[4], 19.5, 'camHUD')

    onShortCutText('esc', 'Press [ESCAPE] to Exit the song', 655, nil, true)
    onTextPrefix('esc', hex[3], 18, 'camHUD')

    onShortCutText('ree', 'Press [R] to Reboot', 715, 20, true)
    onTextPrefix('ree', hex[3], 18, 'camHUD')

    onShortCutText('Arrow', '>', 228, 460, nil, true)
    onTextPrefix('Arrow', hex[4], 16, 'camHUD')

    onShortCutText('Message1', "You can't use Opponent Notes", 680, 450, nil)
    onTextPrefix('Message1', hex[3], 17, 'camHUD')
    setProperty('Message1.visible', false)

    onShortCutText('Message2', 'while disabiling the OpponentStrums', 650, 470, nil)
    onTextPrefix('Message2', hex[3], 17, 'camHUD')
    setProperty('Message2.visible', false)

    -- Setting --

    onShortCutText('h', 'Press [H] to Change BG to White', 230, 410, true)
    onTextPrefix('h', hex[4], 18, 'camHUD')

    onShortCutText('q', 'Press [Q] to Select All the Toggles', 225, 435, true)
    onTextPrefix('q', hex[4], 18.5, 'camHUD')

    onShortCutText('e1', 'Toggle Get the NoteSkin in the stage', 248, 460, true)
    onTextPrefix('e1', hex[4], 16, 'camHUD')

    onShortCutText('e2', 'Toggle Change Opponent Scroll', 248, 480, true)
    onTextPrefix('e2', hex[4], 16, 'camHUD')

    onShortCutText('e3', 'Toggle BG NoteStrum', 248, 500, true)
    onTextPrefix('e3', hex[4], 16, 'camHUD')

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

    setProperty('BFblacklol.visible', false)
    setProperty('DADblacklol.visible', false)

    -- NoteSkin Background -- 

    BGX, ThingyX, NoteX = 220, 218, 695

    makeLuaSprite('playerlol', nil, BGX, 100)
    setObjectCamera('playerlol', 'camHUD')
    setProperty('playerlol.alpha', 0.3)
    addLuaSprite('playerlol')

    makeLuaSprite('opponentlol', nil, BGX, 250)
    setObjectCamera('opponentlol', 'camHUD')
    setProperty('opponentlol.alpha', 0.3)
    addLuaSprite('opponentlol')

    makeLuaSprite('optionlol', nil, BGX, 400)
    setObjectCamera('optionlol', 'camHUD')
    setProperty('optionlol.alpha', 0.3)
    addLuaSprite('optionlol')

    -- Note Text --

    onShortCutText('Note', 'NoteSkin: Defualt', NoteX, 80, true)
    onTextPrefix('Note', hex[4], 25, 'camHUD')

    onShortCutText('NoteDAD', 'NoteSkin: Defualt', NoteX, 230, true)
    onTextPrefix('NoteDAD', hex[4], 25, 'camHUD')

    -- Functions --

    onPrecaching() 
    onBlackWhite(hex[1])
    addLuaScript('scripts/camHUD/Check Version') 
end    

function onCreatePost()
    onHideHealthBar(false) 
    inCutscene = getProperty('inCutscene')
    isPixelStage = getPropertyFromClass('PlayState', 'isPixelStage')
    checkDadStrums = getPropertyFromClass('ClientPrefs', 'opponentStrums')

    -- Text Thingy --

    onShortCutText('pl', 'Player', ThingyX, 60, true)
    onTextPrefix('pl', getIconColor('boyfriend'), 30, 'camHUD')

    onShortCutText('op', 'Opponent', ThingyX, 210, true)
    onTextPrefix('op', getIconColor('dad'), 30, 'camHUD')

    onShortCutText('se', 'Settings', ThingyX, 360, true)
    onTextPrefix('se', hex[4], 30, 'camHUD')
end   
  
local Activate = true;
local Visible = true;
function onStartCountdown()
    local allowCountdown = false;
    if not allowCountdown then -- Block the first countdown
        allowCountdown = true;     
        if Activate and not MuteMusic and not inCutscene then
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
    removeLuaScript('scripts/camHUD/Check Version')
end 

local WhiteBlack = false;    -- It changes the BG Notes to white or black, also [true] is white and black is [false]
local GetOGNotes = false;    -- Dont use this only if you dont want the NoteSkins from that stage
local BGNote = false;        -- Make's a Backround behind the notes! (For concentrating)
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

local ns1, ns2 = 1, 1 -- Normal
local ps1, ps2 = 1, 1 -- Pixel

--      Normal = ^  ^ = Pixel

BLOpacity = 0.5 -- Opacity of the BGNote 

-- [0.5 or higer] (Optional)
-- [0.5] (Recommended)
-- [0.5 or below] (Not Recommended)

function onShortCutText(obj, text, x, y, bool)
    makeLuaText(obj, text, nil, x, y)
    addLuaText(obj, bool)
end

function onTextPrefix(obj, color, size, cam)
    setTextColor(obj, color)
    setTextSize(obj, size)
    setObjectCamera(obj, cam)
end

function getIconColor(char)
    local colorR = getProperty(char..".healthColorArray")[1]
    local colorG = getProperty(char..".healthColorArray")[2]
    local colorB = getProperty(char..".healthColorArray")[3]
    return DEC_HEX(colorR) .. DEC_HEX(colorG) .. DEC_HEX(colorB)
end

-- rdm code found on the internet that I modified a bit, convert Decimal to Hex
function DEC_HEX(IN)
    local B, K, OUT, I, D, addZero = 16, "0123456789ABCDEF", "", 0, false
    if IN == 0 then
	    return "00"
    elseif IN <= 15 and IN ~= 0 then
	    addZero = true
    end
    while IN > 0 do
        I = I + 1
        IN, D = math.floor(IN/B), math.mod(IN,B) + 1
        OUT = string.sub(K,D,D)..OUT
    end
    if addZero then
	    OUT = "0"..OUT
    end
    return OUT
end

function onGetKey(key) -- I know this useless but I hate long code's they, hurt my brain a lot
    return getPropertyFromClass('flixel.FlxG', 'keys.justPressed.'..key)
end

function setPos(obj, pos) 
    if pos[1] ~= nil then
        setProperty(obj..'.x', pos[1])
    end
    if pos[2] ~= nil then
        setProperty(obj..'.y', pos[2]) 
    end
end

function getPos(obj)
    return {getProperty(obj..'.x'), getProperty(obj..'.y')}
end

NoteType = {['No Animation'] = true,['Alt Animation'] = true,['Hey!'] = true,['GF Sing'] = true,[''] = true}
hex = {'000000', '00ff00', 'ff0000', 'ffffff'}

local count = 1
local ifPixelNote = false;
local SplashCheck = false;
function onUpdate(elapsed)
    local GraphicActivate = true;
    if Activate then
        onCustomNotes() 
        onPlus() 
        onReset()
        if onGetKey('SPACE') and not SkipThis then
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
        
        if onGetKey('ESCAPE') then
            endSong()      
        end   

        if onGetKey('R') then
            onRebootNote()
        end   

        if not AllToggles and onGetKey('Q') then
            AllToggles = true;
            setTextColor('q', hex[2])
            playSound('confirmMenu', 0.4, false)  

            onDumbTogglesColor(hex[2])
            onDumbToggles(true)
        elseif AllToggles and onGetKey('Q') then
            AllToggles = false;
            setTextColor('q', hex[4])
            playSound('cancelMenu', 0.4, false)  

            onDumbTogglesColor(hex[4])
            onDumbToggles(false) 
        elseif AllToggles then    
            setTextColor('q', hex[2])

            onDumbTogglesColor(hex[4])
            onDumbToggles(true)
        end   

        if not WhiteBlack and onGetKey('H') then
            WhiteBlack = true;
            setTextString('h', "Press [H] to Change BG to Black")
            onBlackWhite(hex[4]) 
        elseif WhiteBlack and onGetKey('H') then
            WhiteBlack = false;
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(hex[1]) 
        elseif WhiteBlack then
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(hex[4]) 
        end  

        if count == 1 then
            if not GetOGNotes and onGetKey('ENTER') then
                GetOGNotes = true;
                setTextColor('e1', hex[2])
                playSound('confirmMenu', 0.4, false) 
            elseif GetOGNotes and onGetKey('ENTER') then
                GetOGNotes = false;
                setTextColor('e1', hex[4])
                playSound('cancelMenu', 0.4, false)
            end    
        elseif count == 2 then
            if not ChangeScroll and onGetKey('ENTER') then
                ChangeScroll = true;
                setTextColor('e2', hex[2])
                playSound('confirmMenu', 0.4, false)  
            elseif ChangeScroll and onGetKey('ENTER') then    
                ChangeScroll = false;
                setTextColor('e2', hex[4])
                playSound('cancelMenu', 0.4, false) 
            end
        elseif count == 3 then
            if not BGNote and onGetKey('ENTER') then
                BGNote = true;
                setTextColor('e3', hex[2])
                playSound('confirmMenu', 0.4, false)  
            elseif BGNote and onGetKey('ENTER') then    
                BGNote = false;
                setTextColor('e3', hex[4])
                playSound('cancelMenu', 0.4, false) 
            end           
        end
        
        if GetOGNotes then            
            setTextColor('e1', hex[2])
            for i = 0, getProperty('unspawnNotes.length')-1 do
                if NoteType[getPropertyFromGroup('unspawnNotes', i, 'noteType')] then
                    getPropertyFromGroup('unspawnNotes', i, 'texture');   
                    getPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture'); 
                    
                    getPropertyFromGroup('playerStrums', i, 'texture');
                    getPropertyFromGroup('opponentStrums', i, 'texture');
                end    
            end
        elseif ChangeScroll then
            setTextColor('e2', hex[2])
            for i = 0, getProperty('opponentStrums.length')-1 do
                setPropertyFromGroup('opponentStrums', i, 'downScroll', true)
                setPropertyFromGroup('opponentStrums', i, 'y', 570)

                if downscroll then
                    setPropertyFromGroup('opponentStrums', i, 'downScroll', false)
                    setPropertyFromGroup('opponentStrums', i, 'y', 50)
                end   
        
                if not middlescroll then
                    onMoveHealthBar(80, 0)
                    setTextSize('scoreTxt', 18) 
                end  
            end
        elseif not ChangeScroll then
            setTextSize('scoreTxt', 20)    
        elseif BGNote then
            setTextColor('e3', hex[2])
        end  
    end     

    if not Activate and GraphicActivate then
        if BGNote then
            setProperty('BFblacklol.visible', true)
            setProperty('DADblacklol.visible', true) 
    
            if middlescroll then
                removeLuaSprite('DADblacklol', true)
                setProperty('BFblacklol.x', 410) 
            end 

            if not checkDadStrums then 
                removeLuaSprite('DADblacklol', true)
            end
            GraphicActivate = false;
        end
    end 

    if inCutscene then
        Activate = false;
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
        else
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
end 

function onRebootNote()
    SplashCheck = false
    ns1, ns2, ps1, ps2 = 1, 1, 1, 1
    n1, n2, n1DAD, n2DAD = 1, 1, 1, 1
end

local PreX, PreY, PreDADY = 255, 90, 240
local nse, pUI, sn = 'noteseen/', 'pixelUI/noteseen/', 'NoteSkin: '

local NoteString = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes', nse..'dokidoki notes'}
local NoteStringDAD = {nse..'normal notes', nse..'tabi notes', nse..'majin notes', nse..'creepy notes', nse..'dokidoki notes'}

local PixelString = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes', pUI..'Sonic8bit notes', pUI..'mario notes'}
local PixelStringDAD = {pUI..'pixel notes', pUI..'NES notes', pUI..'dokidoki notes', pUI..'Sonic8bit notes', pUI..'mario notes'}
function onCustomNotes()
    onNoteText()
    if not ifPixelNote then
        for i = 1, #NoteString or #NoteStringDAD do
            makeLuaSprite('preview', NoteString[ns1], PreX, PreY)
            setObjectCamera('preview', 'camHUD')
            scaleObject('preview', 0.5, 0.5)
            addLuaSprite('preview', false)

            makeLuaSprite('previewDAD', NoteStringDAD[ns2], PreX, PreDADY)
            setObjectCamera('previewDAD', 'camHUD')
            scaleObject('previewDAD', 0.5, 0.5)
            addLuaSprite('previewDAD', false)
        end 
    else
        for i = 1, #PixelString or #PixelStringDAD do
            makeLuaSprite('preview', PixelString[ps1], PreX, PreY)
            setObjectCamera('preview', 'camHUD')
            setProperty('preview.antialiasing', false)
            scaleObject('preview', 0.5, 0.5)
            addLuaSprite('preview', false)

            makeLuaSprite('previewDAD', PixelStringDAD[ps2], PreX, PreDADY)
            setObjectCamera('previewDAD', 'camHUD')
            setProperty('previewDAD.antialiasing', false)
            scaleObject('previewDAD', 0.5, 0.5)
            addLuaSprite('previewDAD', false)
        end 
    end        
end    

local NoteText = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'DokiDoki'}
local NoteTextDAD = {sn..'Defualt', sn..'Tabi', sn..'Majin', sn..'Creepy', sn..'DokiDoki'}

local PixelText = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'Sonic 8Bit', sn..'Mario'}
local PixelTextDAD = {sn..'Defualt', sn..'NES', sn..'DokiDoki', sn..'Sonic 8Bit', sn..'Mario'}
function onNoteText()
    if not ifPixelNote then
        for i = 1, #NoteText or #NoteTextDAD do
            setTextString('Note', NoteText[ns1])
            setTextString('NoteDAD', NoteText[ns2])
        end
    else
        for i = 1, #PixelText or #PixelTextDAD do
            setTextString('Note', PixelText[ps1])
            setTextString('NoteDAD', PixelText[ps2])
        end
    end  
end

function onCustomSplash()
    if Activate and not SkipThis then
        if not ifPixelNote then
            for i = 1, #SplashAssets or #SplashAssetsDAD do
                makeAnimatedLuaSprite('Splashpreview', SplashAssets[ns1], 100, 1230)
                setObjectCamera('Splashpreview', 'camHUD')
                scaleLuaSprite('Splashpreview', 0.5, 0.5)
                addLuaSprite('Splashpreview', true) 

                makeAnimatedLuaSprite('SplashpreviewDAD', SplashAssetsDAD[ns2], 100, 1230)
                setObjectCamera('SplashpreviewDAD', 'camHUD')
                scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
                addLuaSprite('SplashpreviewDAD', true)
            end
        else
            for i = 1, #PixelSplashAssets or #PixelSplashAssetsDAD do
                makeAnimatedLuaSprite('Splashpreview', PixelSplashAssets[ps1], 100, 1230)
                setObjectCamera('Splashpreview', 'camHUD')
                setProperty('Splashpreview.antialiasing', false)
                scaleLuaSprite('Splashpreview', 0.5, 0.5)
                addLuaSprite('Splashpreview', true) 

                makeAnimatedLuaSprite('SplashpreviewDAD', PixelSplashAssetsDAD[ps2], 100, 1230)
                setObjectCamera('SplashpreviewDAD', 'camHUD')
                setProperty('SplashpreviewDAD.antialiasing', false)
                scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
                addLuaSprite('SplashpreviewDAD', true)
            end
        end
    end
end

local n1, n2 = 1, 1
local n1DAD, n2DAD = 1, 1
function onSplashPrefix()
    if Activate and not SkipThis then
        local SplashX, SplashDADX = {290, 375, 210, 465}, {290, 375, 210, 465}
        local SplashY, SplashDADY = 60, 210
        local NamePrefix1, NamePrefix2 = {'blue1', 'green1', 'purple1', 'red1'}, {'blue2', 'green2', 'purple2', 'red2'} 
           
        Splashes = {
            [1] = function()
                for i = 1, #SplashAssets or #PixelSplashAssets do
                    objectPlayAnimation('Splashpreview', NamePrefix1[n1], false)
                    objectPlayAnimation('Splashpreview', NamePrefix2[n1], false)
                    setPos('Splashpreview', {SplashX[n2], SplashY})
                end    
            end,
            [2] = function()
                for i = 1, #SplashAssetsDAD or #PixelSplashAssetsDAD do
                    objectPlayAnimation('SplashpreviewDAD', NamePrefix1[n1DAD], false)
                    objectPlayAnimation('SplashpreviewDAD', NamePrefix2[n1DAD], false)
                    setPos('SplashpreviewDAD', {SplashDADX[n2DAD], SplashDADY})
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

function onMoveHealthBar(x, y)
    if not hideHud then
         for i = 1, #HealthHUD do
             setProperty(HealthHUD[i]..'.x', getProperty(HealthHUD[i]..'.x') + x)
             setProperty(HealthHUD[i]..'.y', getProperty(HealthHUD[i]..'.y') + y)
         end
    end    
end

function onDumbToggles(bool)
    GetOGNotes = bool;
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

local TogsAlt = {'e1', 'e2', 'e3'}
function onDumbTogglesColor(color)
    for i = 1, #TogsAlt do
        setTextColor(TogsAlt[i], color)
    end
end

local pos = 460
function onPlus()
    if onGetKey('DOWN') then
        playSound('scrollMenu', 0.5, false)
        count = count + 1
        pos = pos + 20
        setProperty('Arrow.y', pos)
    end  

    if onGetKey('UP') then
        playSound('scrollMenu', 0.5, false) 
        count = count - 1
        pos = pos - 20
        setProperty('Arrow.y', pos)
    end    

    if onGetKey('T') or onGetKey('E') or mouseClicked('left') or mouseClicked('middle') then
        playSound('scrollMenu', 0.5, false)
        SplashCheck = false;
        ns1 = ns1 + 1
        ps1 = ps1 + 1
    end  

    if onGetKey('F') or onGetKey('E') or mouseClicked('right') or mouseClicked('middle') then
        if checkDadStrums then
            playSound('scrollMenu', 0.5, false)
            SplashCheck = false;
            ns2 = ns2 + 1
            ps2 = ps2 + 1
        else
            playSound('deniedMOMENT', 0.5, false)
        end
    end 

    if onGetKey('Y') then
        Splashes[1]()
        n1 = n1 + 1
        n2 = n2 + 1
    end

    if onGetKey('G') and checkDadStrums then
        Splashes[2]()
        n1DAD = n1DAD + 1
        n2DAD = n2DAD + 1
    end
end    

local Nor = 6 -- Normal
local Pix = 6 -- Pixel
function onReset()
    if ns1 == Nor then
        onRebootNote()
        ns1 = 1
    elseif ns2 == Nor then
        onRebootNote()
        ns2 = 1
    end
    
    if ps1 == Pix then
        onRebootNote()
        ps1 = 1
    elseif ps2 == Pix then
        onRebootNote()
        ps2 = 1
    end 
    -- Note texture

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

    if count == 4 then
        setProperty('Arrow.y', 460)
        pos = 460
        count = 1
    elseif count == 0 then
        setProperty('Arrow.y', 500)
        pos = 500
        count = 3
    end    
end

local nw, npl, ns  = 'notesplash/weeb/', 'notesplash/', 'noteskin/'

NoteAssets = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets', ns..'dokidoki_assets'}
NoteAssetsDAD = {'NOTE_assets', ns..'tabi_NOTE_assets', ns..'Majin_Notes', ns..'creepy_assets', ns..'dokidoki_assets'}

SplashAssets = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes', npl..'dokidokiSplashes'}
SplashAssetsDAD = {'noteSplashes', 'noteSplashes', npl..'Majin_Splashes', npl..'creepySplashes', npl..'dokidokiSplashes'}

PixelAssets = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets', ns..'Sonic8bit_assets', ns..'Mario_assets'}
PixelAssetsDAD = {'NOTE_assets', ns..'NESNOTE_assets', ns..'dokidoki_assets', ns..'Sonic8bit_assets', ns..'Mario_assets'}

PixelSplashAssets = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes', nw..'Sonic8bitSplashes', nw..'marioSplashes'}
PixelSplashAssetsDAD = {nw..'noteSplashes', nw..'noteSplashes', nw..'dokidokiSplashes', nw..'Sonic8bitSplashes', nw..'marioSplashes'}
function onUpdatePost(elapsed)
    if not Activate then
        for i = 0, getProperty('notes.length')-1 do
            if NoteType[getPropertyFromGroup('notes', i, 'noteType')] and not GetOGNotes then
                if getPropertyFromGroup('notes', i, 'mustPress') then -- Player Section
                    if not ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', NoteAssets[ns1]);  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssets[ns1]);
                    else
                        setPropertyFromGroup('notes', i, 'texture', PixelAssets[ps1]);  
                        setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssets[ps1]);  
                    end    
                else -- Opponent Section
                    if not ifPixelNote then
                        setPropertyFromGroup('notes', i, 'texture', NoteAssetsDAD[ns2]);  
                    else
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
                else
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
    
    precacheSound('scrollMenu')
    precacheSound('ToggleJingle')  
    precacheMusic('offsetSong')
end

local TextCon = {'y', 't', 'g', 'f', 'e', 'h', 'q', 'hs', 'space', 'esc', 'ree'}
local TextTogs = {'e1', 'e2', 'e3', 'Arrow'}
local TextOther = {'Note', 'NoteDAD', 'pl', 'op', 'se', 'Message1', 'Message2'}
local BGlols = {'blacklol', 'playerlol', 'opponentlol', 'optionlol'}
local NoteSplashPre = {'preview', 'previewDAD', 'Splashpreview', 'SplashpreviewDAD'}
function onRemove() 
    for i = 1, #TextCon or #TextTogs or #TextOther or #BGlols or #NoteSplashPre do
        removeLuaText(TextCon[i], true)
        removeLuaText(TextTogs[i], true)
        removeLuaText(TextOther[i], true)
        removeLuaSprite(BGlols[i], true)
        removeLuaSprite(NoteSplashPre[i], true)
    end
end 
