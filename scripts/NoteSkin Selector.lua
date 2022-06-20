function onCreate()
    makeLuaText('space', 'Press [SPACE] to Start', 800, 430, 410);
    setTextSize('space', 30)
    addLuaText('space', true)

    makeLuaText('t', 'Press [T] to Change NoteSkin', 0, 660, 150);
    setTextSize('t', 20)
    setTextAlignment('t', 'middle')
    addLuaText('t', true)

    makeLuaText('y', 'Press [Y] to Check Note Splashes', 0, 635, 120);
    setTextSize('y', 20)
    setTextColor('y', red)
    setTextAlignment('y', 'middle')
    addLuaText('y', true)

    makeLuaText('f', 'Press [F] to Change NoteSkin', 0, 660, 300);
    setTextSize('f', 20)
    setTextAlignment('f', 'middle')
    addLuaText('f', true)

    makeLuaText('g', 'Press [G] to Check Note Splashes', 0, 635, 270);
    setTextSize('g', 20)
    setTextColor('g', red)
    setTextAlignment('g', 'middle')
    addLuaText('g', true)

    makeLuaText('e', 'Press [E] to Change Both NoteSkin', 0, 645, 360);
    setTextSize('e', 19.5)
    setTextAlignment('e', 'middle')
    addLuaText('e', true)

    makeLuaText('esc', 'Press [ESCAPE] to Exit the song', 0, 655);
    setTextSize('esc', 18)
    setTextColor('esc', red)
    addLuaText('esc', true)

    makeLuaText('Arrow', '>', 0, 228, 460);
    setTextSize('Arrow', 16)
    addLuaText('Arrow', true)

    -- Setting --

    Xe = 248

    makeLuaText('h', 'Press [H] to Change BG to White', 0, 230, 410);
    setTextSize('h', 20)
    addLuaText('h', true)

    makeLuaText('q', 'Press [Q] to Select All the Toggles', 0, 225, 435);
    setTextSize('q', 18.5)
    addLuaText('q', true)

    makeLuaText('e1', 'Toggle Get the NoteSkin in the stage', 0, Xe, 460);
    setTextSize('e1', 16)
    addLuaText('e1', true)

    makeLuaText('e2', 'Toggle Hitsounds', 0, Xe, 480);
    setTextSize('e2', 16)
    addLuaText('e2', true)

    makeLuaText('e3', 'Toggle Change Opponent Scroll', 0, Xe, 500);
    setTextSize('e3', 16)
    addLuaText('e3', true)

    makeLuaText('e4', 'Toggle BG behind the Notes ', 0, Xe, 520);
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

    makeLuaText('pl', 'Player', 390, 80, 60)
    setTextSize('pl', 30)
    setObjectCamera('pl', 'camHUD')
    setTextColor('pl', '31b1d1')
    addLuaText('pl', true)

    makeLuaText('op', 'Opponent', 425, 80, 210)
    setTextSize('op', 30)
    setObjectCamera('op', 'camHUD')
    setTextColor('op', 'af66ce')
    addLuaText('op', true)

    makeLuaText('se', 'Settings', 425, 80, 360)
    setTextSize('se', 30)
    setObjectCamera('se', 'camHUD')
    addLuaText('se', true)

    -- Note Text --

    makeLuaText('Note', 'NoteSkin: Normal', 0, 695, 80)
    setTextSize('Note', 25)
    setTextAlignment('Note', 'middle')
    addLuaText('Note', true)

    makeLuaText('NoteDAD', 'NoteSkin: Normal', 0, 695, 230)
    setTextSize('NoteDAD', 25)
    setTextAlignment('NoteDAD', 'middle')
    addLuaText('NoteDAD', true)

    -- HitSounds -- 

    makeLuaText('hs', '('..HSName[hss]..')', 0, 400, 480);
    setTextSize('hs', 16)
    addLuaText('hs', true)

    -- Dumb -- 

    setProperty('BFblacklol.visible', false)
    setProperty('DADblacklol.visible', false)

    -- Functions --

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
        onCustomSplash()
        onSplashPrefix()       
        if Activate and not MuteMusic then
            playMusic('breakfast-Bsides', 0.5, true)
        end  
        if SkipThis then
            startCountdown()
            onRemove()
        end
        return Function_Stop; 
    end 
    Activate = false;
    return Function_Continue;
end 

local Visible = true;
function onSongStart()
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

NoteType = {
    ['No Animation'] = true,
    ['Alt Animation'] = true,
    ['Hey!'] = true,
    ['GF Sing'] = true,
    [''] = true
}

black = '000000'
green = '00ff00'
red = 'ff0000'
white = 'ffffff'

local count = 1
local ifPixelNote = false;
function onUpdate(elapsed)
    inCutscene = getProperty('inCutscene')
    isPixelStage = getPropertyFromClass('PlayState','isPixelStage')

    if Activate then
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
        
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') then
            endSong()      
        end   

        if AllToggles == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = true;
            doTweenColor('qColor', 'q', green, 0.1, 'linear')
            playSound('confirmMenu', 0.4, false)  

            onDumbTogglesColor(green)
            onDumbToggles(true)
        elseif AllToggles == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Q') then
            AllToggles = false;
            doTweenColor('qColor', 'q', white, 0.1, 'linear')
            playSound('cancelMenu', 0.4, false)  

            onDumbTogglesColor(white)
            onDumbToggles(false) 
        elseif AllToggles == true then    
            doTweenColor('qColor', 'q', green, 0.1, 'linear')

            onDumbTogglesColor(white)
            onDumbToggles(true)
        end   

        if WhiteBlack == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = true;
            setTextString('h', "Press [H] to Change BG to Black")
            onBlackWhite(white) 
        elseif WhiteBlack == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.H') then
            WhiteBlack = false;
            setTextString('h', "Press [H] to Change BG to White")
            onBlackWhite(black) 
        elseif WhiteBlack == true then
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
        elseif count == 2 then
            if AnnoyingSound == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                AnnoyingSound = true;
                doTweenColor('e2Color', 'e2', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif AnnoyingSound == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then  
                AnnoyingSound = false;
                doTweenColor('e2Color', 'e2', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false)
            end 
        elseif count == 3 then
            if ChangeScroll == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then
                ChangeScroll = true;
                doTweenColor('e3Color', 'e3', green, 0.1, 'linear')
                playSound('confirmMenu', 0.4, false)  
            elseif ChangeScroll == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ENTER') then    
                ChangeScroll = false;
                doTweenColor('e3Color', 'e3', white, 0.1, 'linear')
                playSound('cancelMenu', 0.4, false) 
            end
        elseif count == 4 then
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

        if GetOGNotes == true then            
            doTweenColor('e1Color', 'e1', green, 0.1, 'linear')
            for i = 0, getProperty('notes.length')-1 do
                if NoteType[getPropertyFromGroup('notes', i, 'noteType')] then
                    getPropertyFromGroup('notes', i, 'texture');   
                    getPropertyFromGroup('notes', i, 'noteSplashTexture'); 
                    
                    getPropertyFromGroup('playerStrums', i, 'texture');
                    getPropertyFromGroup('opponentStrums', i, 'texture');  
                end    
            end
        end    

        if AnnoyingSound == true then
            doTweenColor('e2Color', 'e2', green, 0.1, 'linear') 
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

        if BGNote == true then
            doTweenColor('e4Color', 'e4', green, 0.1, 'linear')
        end    
    end      
    
    if not Activate then
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

    if inCutscene == true then
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

    if isPixelStage then
        ifPixelNote = true
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
        if ifPixelNote == false then
            for i = 1, #NoteName do
                makeLuaSprite('preview', NoteString[ns1], PreX, PreY)
                setObjectCamera('preview', 'camHUD')
                scaleObject('preview', 0.5, 0.5)
                addLuaSprite('preview', false)
            end  
    
            for i = 1, #NoteNameDAD do
                makeLuaSprite('previewDAD', NoteStringDAD[ns2], PreX, PreDADY)
                setObjectCamera('previewDAD', 'camHUD')
                scaleObject('previewDAD', 0.5, 0.5)
                addLuaSprite('previewDAD', false)
            end 
        end  
        
        if ifPixelNote == true then
            for i = 1, #PixelName do
                makeLuaSprite('Pixelpreview', PixelString[ps1], PreX, PreY)
                setObjectCamera('Pixelpreview', 'camHUD')
                setProperty('Pixelpreview.antialiasing', false)
                scaleObject('Pixelpreview', 0.5, 0.5)
                addLuaSprite('Pixelpreview', false)
            end  
    
            for i = 1, #PixelNameDAD do
                makeLuaSprite('PixelpreviewDAD', PixelStringDAD[ps2], PreX, PreDADY)
                setObjectCamera('PixelpreviewDAD', 'camHUD')
                setProperty('PixelpreviewDAD.antialiasing', false)
                scaleObject('PixelpreviewDAD', 0.5, 0.5)
                addLuaSprite('PixelpreviewDAD', false)
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
    if ifPixelNote == false then
        for i = 1, #NoteText do
            setTextString('Note', NoteText[ns1])
        end
        for i = 1, #NoteTextDAD do
            setTextString('NoteDAD', NoteText[ns2])
        end
    end 
    
    if ifPixelNote == true then
        for i = 1, #PixelText do
            setTextString('Note', PixelText[ps1])
        end
        for i = 1, #PixelTextDAD do
            setTextString('NoteDAD', PixelText[ps2])
        end
    end  
end

NameSplash = {'Splashpreview0', 'Splashpreview1', 'Splashpreview2', 'Splashpreview4'}
NameSplashDAD = {'SplashpreviewDAD0', 'SplashpreviewDAD1', 'SplashpreviewDAD2', 'SplashpreviewDAD4'}

NamePixelSplash = {'SplashPixelpre0', 'SplashPixelpre1', 'SplashPixelpre2', 'SplashPixelpre4'}
NamePixelSplashDAD = {'SplashPixelpreDAD0', 'SplashPixelpreDAD1', 'SplashPixelpreDAD2', 'SplashPixelpreDAD4'}

local s1 = 1
local s1DAD = 1

local sp1 = 1
local sp1DAD = 1
function onCustomSplash()
    if ifPixelNote == false then
        for i = 1, #NameSplash do
            makeAnimatedLuaSprite('Splashpreview', SplashAssets[s1], 100, 1230)
            setObjectCamera('Splashpreview', 'camHUD')
            scaleLuaSprite('Splashpreview', 0.5, 0.5)
            addLuaSprite('Splashpreview', true) 
        end     
    
        for i = 1, #NameSplashDAD do
            makeAnimatedLuaSprite('SplashpreviewDAD', SplashAssets[s1DAD], 100, 1230)
            setObjectCamera('SplashpreviewDAD', 'camHUD')
            scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
            addLuaSprite('SplashpreviewDAD', true)
        end
    end

    --[[
    if ifPixelNote == true then
        for i = 1, #PixelSplashskin do
            makeAnimatedLuaSprite('SplashPixelpre', Splashskin[sp1], PreX, PreY)
            setObjectCamera('SplashPixelpre', 'camHUD')
            scaleLuaSprite('SplashPixelpre', 0.5, 0.5)
            addLuaSprite('SplashPixelpre', true) 
        end     
    
        for i = 1, #PixelSplashskinDAD do
            makeAnimatedLuaSprite('SplashPixelpreDAD', SplashskinDAD[sp1DAD], PreX, PreDADY)
            setObjectCamera('SplashPixelpreDAD', 'camHUD')
            scaleLuaSprite('SplashPixelpreDAD', 0.5, 0.5)
            addLuaSprite('SplashPixelpreDAD', true)
        end
    end
    --]]
end

local n1 = 1
local n2 = 1

local n1DAD = 1
local n2DAD = 1

local p1 = 1
local p2 = 1

local p1DAD = 1
local p2DAD = 1
function onSplashPrefix()
    -- Thanks to mayo78 for making me learn tables lel
    SplashX = {290, 375, 210, 465}
    SplashDADX = {290, 375, 210, 465}
                    
    SplashY = 60
    SplashDADY = 210

    NamePrefix1 = {'blue1', 'green1', 'purple1', 'red1'}
    NamePrefix2 = {'blue2', 'green2', 'purple2', 'red2'} 
       
    Splashes = {
        [1] = function()
            for i = 1, #NameSplash do
                objectPlayAnimation('Splashpreview', NamePrefix1[n1], false)
                objectPlayAnimation('Splashpreview', NamePrefix2[n1], false)
                setProperty('Splashpreview.x', SplashX[n2])
                setProperty('Splashpreview.y', SplashY)
            end    
        end,

        [2] = function()
            for i = 1, #NameSplashDAD do
                objectPlayAnimation('SplashpreviewDAD', NamePrefix1[n1DAD], false)
                objectPlayAnimation('SplashpreviewDAD', NamePrefix2[n1DAD], false)
                setProperty('SplashpreviewDAD.x', SplashDADX[n2DAD])
                setProperty('SplashpreviewDAD.y', SplashDADY)
            end    
        end,    
    }  
    
    for i = 1, #NameSplash do
        luaSpriteAddAnimationByPrefix('Splashpreview', 'blue1', 'note splash blue 1', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'green1', 'note splash green 1', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'purple1', 'note splash purple 1', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'red1', 'note splash red 1', 24, false);
                        
        luaSpriteAddAnimationByPrefix('Splashpreview', 'blue2', 'note splash blue 2', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'green2', 'note splash green 2', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'purple2', 'note splash purple 2', 24, false);
        luaSpriteAddAnimationByPrefix('Splashpreview', 'red2', 'note splash red 2', 24, false);
    end

    for i = 1, #NameSplashDAD do
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

-- uhh these dumb function are for campcating the code
function onHideHealthBar(boolean) 
    if not hideHud then
        setProperty('scoreTxt.visible', boolean) -- uhh ignore the green color, i dunno wut color it is
        setProperty('healthBar.visible', boolean)
        setProperty('healthBarBG.visible', boolean)
        setProperty('iconP1.visible', boolean)
        setProperty('iconP2.visible', boolean) 
    end    
end  

function onDumbToggles(boolean)
    GetOGNotes = boolean;
    AnnoyingSound = boolean;
    BGNote = boolean;
    ChangeScroll = boolean;   
end

function onBlackWhite(color)  
    makeGraphic('blacklol', 400, 1000, color)
    makeGraphic('playerlol', 400, 100, color)
    makeGraphic('opponentlol', 400, 100, color)
    makeGraphic('optionlol', 400, 350, color)
    makeGraphic('BFblacklol', 450, 1000, color)
    makeGraphic('DADblacklol', 450, 1000, color)
end    

function onDumbTogglesColor(color)
    doTweenColor('e1Color', 'e1', color, 0.1, 'linear')
    doTweenColor('e2Color', 'e2', color, 0.1, 'linear')
    doTweenColor('e3Color', 'e3', color, 0.1, 'linear')
    doTweenColor('e4Color', 'e4', color, 0.1, 'linear')
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

    if ifPixelNote == false then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            ns1 = ns1 + 1
            s1 = s1 + 1
        end  
    
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
            playSound('scrollMenu', 0.5, false)
            ns2 = ns2 + 1
            s1DAD = s1DAD + 1
        end  

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.E') then
            playSound('scrollMenu', 0.5, false)
            ns1 = ns1 + 1
            ns2 = ns2 + 1
            s1 = s1 + 1
            s1DAD = s1DAD + 1
        end  

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') then
            Splashes[1]()
            n1 = n1 + 1
            n2 = n2 + 1
        end

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
            Splashes[2]()
            n1DAD = n1DAD + 1
            n2DAD = n2DAD + 1
        end
    end    

    if ifPixelNote == true then
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
    -- Note texture

    if s1 == n then
        s1 = 1
    end
    if s1DAD == n then
        s1DAD = 1
    end
    -- Splash texture

    if n1 == n then
        n1 = 1
    end
    if n2 == n then
        n2 = 1
    end

    if n1DAD == n then
        n1DAD = 1
    end
    if n2DAD == n then
        n2DAD = 1
    end
    -- Splash Prefixes

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
        if NoteType[getPropertyFromGroup('notes', i, 'noteType')] and GetOGNotes == false then
            if getPropertyFromGroup('notes', i, 'mustPress') then -- Player Section
                if ifPixelNote == false then
                    setPropertyFromGroup('notes', i, 'texture', NoteAssets[ns1]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssets[ns1]);
                end

                if ifPixelNote == true then
                    setPropertyFromGroup('notes', i, 'texture', PixelAssets[ps1]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssets[ps1]);  
                end    
            elseif not getPropertyFromGroup('notes', i, 'mustPress') then -- Opponent Section
                if ifPixelNote == false then
                    setPropertyFromGroup('notes', i, 'texture', NoteAssetsDAD[ns2]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', SplashAssetsDAD[ns2]);
                end

                if ifPixelNote == true then
                    setPropertyFromGroup('notes', i, 'texture', PixelAssetsDAD[ps2]);  
                    setPropertyFromGroup('notes', i, 'noteSplashTexture', PixelSplashAssetsDAD[ps2]);   
                end
            end
        end
    end        
    
    for i = 0,4,1 do   
        if GetOGNotes == false then
            if ifPixelNote == false then
                setPropertyFromGroup('playerStrums', i, 'texture', NoteAssets[ns1]);
                setPropertyFromGroup('opponentStrums', i, 'texture', NoteAssetsDAD[ns2]);  
            end

            if ifPixelNote == true then
                setPropertyFromGroup('playerStrums', i, 'texture', PixelAssets[ps1]);
                setPropertyFromGroup('opponentStrums', i, 'texture', PixelAssetsDAD[ps2]);   
            end   
        end
    end   
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

    removeLuaSprite('Splashpreview', true);
    removeLuaSprite('SplashpreviewDAD', true);

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

    removeLuaText('Arrow', true);

    removeLuaText('h', true);
    removeLuaText('q', true);
    removeLuaText('hs', true);

    removeLuaText('e1', true);
    removeLuaText('e2', true);
    removeLuaText('e3', true);
    removeLuaText('e4', true);
end 
