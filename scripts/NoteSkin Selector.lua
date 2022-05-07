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
    setTextColor('y', 'ff0000')
    setTextAlignment('y', 'middle')
    addLuaText('y', true)

    makeLuaText('f', 'Press [F] to change NoteSkin', 0, 660);
    setTextSize('f', '20')
    setTextAlignment('f', 'middle')
    addLuaText('f', true)

    makeLuaText('g', 'Press [G] to Check Note Splashes', 0, 635);
    setTextSize('g', '20')
    setTextColor('g', 'ff0000')
    setTextAlignment('g', 'middle')
    addLuaText('g', true)

    makeLuaText('esc', 'Press [ESCAPE] to Exit the song', 0, 655);
    setTextSize('esc', '18')
    setTextColor('esc', 'ff0000')
    addLuaText('esc', true)

    -- Warn --

    makeLuaText('p', 'Press [P] to Change into Pixel Note', 0, 635)
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

    makeLuaText('x', 'Press [X] to Enable Hitsounds', 0, 228);
    setTextSize('x', '16')
    addLuaText('x', true)

    makeLuaText('c', 'Press [C] to Change Opponent Scroll', 0, 228);
    setTextSize('c', '16')
    addLuaText('c', true)

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

    makeLuaText('Note', 'NoteSkin: Normal', 0, 695)
    setTextSize('Note', '25')
    setTextAlignment('Note', 'middle')
    addLuaText('Note', true)

    makeLuaText('NoteDAD', 'NoteSkin: Normal', 0, 695)
    setTextSize('NoteDAD', '25')
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
        if Activate == true or not seenCutscene then
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
end 

local AnnoyingSound = false;
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

function tableToString(table, sep) 
    -- turns a table into a string (ex: {'nice', 'cool', 3} -> 'nice, cool, 3')
	str = ''
	for k,v in pairs(table) do
		if k ~= #table then
			str = str..v..sep
		else
			str = str..vxx
		end
	end
	return str;
end

local Answer = false;
local WhiteBlack = false;
local GetOGNotes = false;
local ChangeScroll = false;
function onUpdate(elapsed)
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
                cameraFlash('funny', 'ffffff', 0.7, false)      
            end 
    
            Activate = false; 
        end 

        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Y') or getPropertyFromClass('flixel.FlxG', 'keys.justPressed.G') then
            playSound('deniedMOMENT', 0.5, false)
        end    

        if GetOGNotes == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then
            GetOGNotes = true;
            doTweenColor('zColor', 'z', '00ff00', 0.1, 'linear')
            playSound('confirmMenu', 0.4, false) 

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

        elseif GetOGNotes == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.Z') then
            GetOGNotes = false;
            doTweenColor('zColor', 'z', 'ffffff', 0.1, 'linear')
            playSound('cancelMenu', 0.4, false) 
        end    
    
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.ESCAPE') then
            endSong()      
        end  

        if ChangeScroll == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.C') then
            ChangeScroll = true;
            doTweenColor('cColor', 'c', '00ff00', 0.1, 'linear')
            playSound('confirmMenu', 0.4, false)  

        elseif ChangeScroll == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.C') then    
            ChangeScroll = false;
            doTweenColor('cColor', 'c', 'ffffff', 0.1, 'linear')
            playSound('cancelMenu', 0.4, false) 
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
                    
                if not middlescroll then
                    setPos('healthBar', {650, nil})
                    setPos('healthBarBG', {646, nil})

                    setPos('scoreTxt', {300, nil})
                    setTextSize('scoreTxt', 18)   
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

        if AnnoyingSound == false and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.X') then
            AnnoyingSound = true;
            doTweenColor('xColor', 'x', '00ff00', 0.1, 'linear')
            playSound('confirmMenu', 0.4, false)  
        elseif AnnoyingSound == true and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.X') then  
            AnnoyingSound = false;
            doTweenColor('xColor', 'x', 'ffffff', 0.1, 'linear')
            playSound('cancelMenu', 0.4, false)
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

NoteName = {'preview0', 'preview1', 'preview2', 'preview3', 'preview4'}
NoteNameDAD = {'previewDAD0', 'previewDAD1', 'previewDAD2', 'previewDAD3', 'previewDAD4'}

NoteString = {'noteseen/normal notes', 'noteseen/tabi notes', 'noteseen/majin notes', 'noteseen/creepy notes', 'noteseen/HD notes'}
NoteStringDAD = {'noteseen/normal notes', 'noteseen/tabi notes', 'noteseen/majin notes', 'noteseen/creepy notes', 'noteseen/HD notes'}

PixelName = {'Pixelpreview0', 'Pixelpreview1', 'Pixelpreview2', 'Pixelpreview3'}
PixelNameDAD = {'PixelpreviewDAD0', 'PixelpreviewDAD1', 'PixelpreviewDAD2', 'PixelpreviewDAD3'}

PixelString = {'pixelUI/noteseen/pixel notes', 'pixelUI/noteseen/NES notes', 'pixelUI/noteseen/dokidoki notes'}
PixelStringDAD = {'pixelUI/noteseen/pixel notes', 'pixelUI/noteseen/NES notes', 'pixelUI/noteseen/dokidoki notes'}

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
            scaleObject('Pixelpreview', 0.5, 0.5)
            addLuaSprite('Pixelpreview', true)
        end  

        for i = 1, #PixelNameDAD do
            makeLuaSprite('PixelpreviewDAD', PixelStringDAD[ps2], PreX, PreDADY)
            setObjectCamera('PixelpreviewDAD', 'camHUD')
            scaleObject('PixelpreviewDAD', 0.5, 0.5)
            addLuaSprite('PixelpreviewDAD', true)
        end 
    end    
end    

NoteText = {'NoteSkin: Defualt', 'NoteSkin: Tabi', 'NoteSkin: Majin', 'NoteSkin: Creepy', 'NoteSkin: HD'}
NoteTextDAD = {'NoteSkin: Defualt', 'NoteSkin: Tabi', 'NoteSkin: Majin', 'NoteSkin: Creepy', 'NoteSkin: HD'}

PixelText = {'NoteSkin: Defualt', 'NoteSkin: NES', 'NoteSkin: DokiDoki'}
PixelTextDAD = {'NoteSkin: Defualt', 'NoteSkin: NES', 'NoteSkin: DokiDoki'}
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

function onPlus()
    if Answer == false then
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then
            playSound('scrollMenu', 0.5, false)
            ns1 = ns1 + 1
        end  
    
        if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F') then
            playSound('scrollMenu', 0.5, false)
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
    end  
end

n = 6 -- Normal
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
end

NoteAssets = {'NOTE_assets', 'noteskin/tabi_NOTE_assets', 'noteskin/Majin_Notes', 'noteskin/creepy_assets', 'noteskin/HDNOTE_assets'}
NoteAssetsDAD = {'NOTE_assets', 'noteskin/tabi_NOTE_assets', 'noteskin/Majin_Notes', 'noteskin/creepy_assets', 'noteskin/HDNOTE_assets'}

SplashAssets = {'noteSplashes', 'noteSplashes', 'noteskin/Majin_Splashes', 'noteskin/creepySplashes', 'noteSplashes'}
SplashAssetsDAD = {'noteSplashes', 'noteSplashes', 'noteskin/Majin_Splashes', 'noteskin/creepySplashes', 'noteSplashes'}

PixelAssets = {'NOTE_assets', 'noteskin/NESNOTE_assets', 'noteskin/dokidoki_assets'}
PixelAssetsDAD = {'NOTE_assets', 'noteskin/NESNOTE_assets', 'noteskin/dokidoki_assets'}

PixelSplashAssets = {'notesplash/weeb/noteSplashes', 'notesplash/weeb/noteSplashes', 'notesplash/weeb/dokidokiSplashes'}
PixelSplashAssetsDAD = {'notesplash/weeb/noteSplashes', 'notesplash/weeb/noteSplashes', 'notesplash/weeb/dokidokiSplashes'}
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

    doTweenY('pY', 'p', 412, 0.1, 'linear')
    doTweenY('warnY', 'warn', 450, 0.1, 'linear')
    doTweenY('warn2Y', 'warn2', 480, 0.1, 'linear')
    doTweenY('questionY', 'question', 520, 0.1, 'linear')
    doTweenY('sidenoteY', 'sidenote', 560, 0.1, 'linear')

    doTweenY('spaceY', 'space', 360, 0.1, 'linear')

    doTweenY('noteY0', 'Note', 80, 0.1, 'linear')
    doTweenY('noteDADY0', 'NoteDAD', 230, 0.1, 'linear')   

    doTweenX('spaceX', 'space', 430, 0.001, 'linear')

    doTweenY('hY', 'h', 410, 0.1, 'linear')
    doTweenY('zY', 'z', 440, 0.1, 'linear')
    doTweenY('xY', 'x', 460, 0.1, 'linear')
    doTweenY('cY', 'c', 480, 0.1, 'linear')

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
    precacheImage('notesplash/dokidokiSplashes')

    precacheImage('pixelUI/noteseen/pixel notes')
    precacheImage('pixelUI/noteseen/NES notes')
    precacheImage('pixelUI/noteseen/dokidoki notes')
    
    precacheSound('scrollMenu')
    precacheSound('ToggleJingle')  
    precacheSound('hitsound')

    precacheMusic('offsetSong')
end

function onRemove() 
    removeLuaText('y', true);
    removeLuaText('t', true);
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

    removeLuaText('f', true);
    removeLuaText('g', true);
    removeLuaText('z', true);
    removeLuaText('x', true);
    removeLuaText('c', true);
    removeLuaText('h', true);
end 
