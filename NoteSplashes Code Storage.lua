NameSplash = {'Splashpreview0', 'Splashpreview1', 'Splashpreview2', 'Splashpreview4'}
NameSplashDAD = {'SplashpreviewDAD0', 'SplashpreviewDAD1', 'SplashpreviewDAD2', 'SplashpreviewDAD4'}

NamePixelSplash = {'SplashPixelpre0', 'SplashPixelpre1', 'SplashPixelpre2', 'SplashPixelpre4'}
NamePixelSplashDAD = {'SplashPixelpreDAD0', 'SplashPixelpreDAD1', 'SplashPixelpreDAD2', 'SplashPixelpreDAD4'}

local s1 = 1
local s1DAD = 1

local sp1 = 1
local sp1DAD = 1
function onCustomSplash()
    if Answer == false then
        for i = 1, #NameSplash do
            makeAnimatedLuaSprite('Splashpreview', Splashskin[s1], PreX, PreY)
            setObjectCamera('Splashpreview', 'camHUD')
            scaleLuaSprite('Splashpreview', 0.5, 0.5)
            addLuaSprite('Splashpreview', true) 
        end     
    
        for i = 1, #NameSplashDAD do
            makeAnimatedLuaSprite('SplashpreviewDAD', SplashskinDAD[s1DAD], PreX, PreDADY)
            setObjectCamera('SplashpreviewDAD', 'camHUD')
            scaleLuaSprite('SplashpreviewDAD', 0.5, 0.5)
            addLuaSprite('SplashpreviewDAD', true)
        end
    end

    if Answer == true then
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
                doTweenX('SplashpreX', 'Splashpreview', SplashX[n2], 0.001, 'linear')
                doTweenY('SplashpreY', 'Splashpreview', SplashY, 0.001, 'linear')
            end    
        end,

        [2] = function()
            for i = 1, #NameSplashDAD do
                objectPlayAnimation('SplashpreviewDAD', NamePrefix1[n1DAD], false)
                objectPlayAnimation('SplashpreviewDAD', NamePrefix2[n1DAD], false)
                doTweenX('SplashpreXDAD', 'SplashpreviewDAD', SplashDADX[n2DAD], 0.001, 'linear')
                doTweenY('SplashpreYDAD', 'SplashpreviewDAD', SplashDADY, 0.001, 'linear')
            end    
        end,    
    }  
    
    for i = 1, #NameSplash do
        doTweenY('SplashpreY', 'Splashpreview', 1230, 0.001, 'linear')
        doTweenX('SplashpreX', 'Splashpreview', 100, 0.001, 'linear')
    end   

    for i = 1, #NameSplashDAD do
        doTweenY('SplashpreYDAD', 'SplashpreviewDAD', 1230, 0.001, 'linear')
        doTweenX('SplashpreXDAD', 'SplashpreviewDAD', 100, 0.001, 'linear')
    end 
    
    luaSpriteAddAnimationByPrefix('Splashpreview', 'blue1', 'note splash blue 1', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'green1', 'note splash green 1', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'purple1', 'note splash purple 1', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'red1', 'note splash red 1', 24, false);
                    
    luaSpriteAddAnimationByPrefix('Splashpreview', 'blue2', 'note splash blue 2', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'green2', 'note splash green 2', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'purple2', 'note splash purple 2', 24, false);
    luaSpriteAddAnimationByPrefix('Splashpreview', 'red2', 'note splash red 2', 24, false);
                    
    addAnimationByIndices('Splashpreview', 'blue1', 'note splash blue 1', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'green1', 'note splash green 1', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'purple1', 'note splash purple 1', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'red1', 'note splash red 1', '0,1,2,3', 24)
                    
    addAnimationByIndices('Splashpreview', 'blue2', 'note splash blue 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'green2', 'note splash green 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'purple2', 'note splash purple 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'red2', 'note splash red 2', '0,1,2,3', 24)
  

    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'blue1', 'note splash blue 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'green1', 'note splash green 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'purple1', 'note splash purple 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'red1', 'note splash red 1', 24, false);
                    
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'blue2', 'note splash blue 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'green2', 'note splash green 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'purple2', 'note splash purple 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashpreviewDAD', 'red2', 'note splash red 2', 24, false);
                    
    addAnimationByIndices('SplashpreviewDAD', 'blue1', 'note splash blue 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'green1', 'note splash green 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'purple1', 'note splash purple 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'red1', 'note splash red 1', '0,1,2,3', 24)
                    
    addAnimationByIndices('SplashpreviewDAD', 'blue2', 'note splash blue 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'green2', 'note splash green 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'purple2', 'note splash purple 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashpreviewDAD', 'red2', 'note splash red 2', '0,1,2,3', 24)

    SplashesPixel = {
        [1] = function()
            for i = 1, #NamePixelSplash do
                objectPlayAnimation('SplashPixelpre', NamePrefix1[p1], false)
                objectPlayAnimation('SplashPixelpre', NamePrefix2[p1], false)
                doTweenX('SplashPixelpreX', 'SplashPixelpre', SplashX[p2], 0.001, 'linear')
                doTweenY('SplashPixelpreY', 'SplashPixelpre', SplashY, 0.001, 'linear')

            end    
        end,

        [2] = function()
            for i = 1, #NamePixelSplashDAD do
                objectPlayAnimation('SplashPixelpreDAD', NamePrefix1[p1DAD], false)
                objectPlayAnimation('SplashPixelpreDAD', NamePrefix2[p1DAD], false)
                doTweenX('SplashPixelpreXDAD', 'SplashPixelpreDAD', SplashDADX[p2DAD], 0.001, 'linear')
                doTweenY('SplashPixelpreYDAD', 'SplashPixelpreDAD', SplashDADY, 0.001, 'linear')
            end    
        end,    
    }  

    for i = 1, #NamePixelSplash do
        doTweenY('SplashPixelpreY', 'SplashPixelpre', 1230, 0.001, 'linear')
        doTweenX('SplashPixelpreX', 'SplashPixelpre', 100, 0.001, 'linear')
    end   

    for i = 1, #NamePixelSplashDAD do
        doTweenY('SplashPixelpreYDAD', 'SplashPixelpreDAD', 1230, 0.001, 'linear')
        doTweenX('SplashPixelpreXDAD', 'SplashPixelpreDAD', 100, 0.001, 'linear')
    end 

    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'blue1', 'note splash blue 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'green1', 'note splash green 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'purple1', 'note splash purple 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'red1', 'note splash red 1', 24, false);
                    
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'blue2', 'note splash blue 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'green2', 'note splash green 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'purple2', 'note splash purple 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpre', 'red2', 'note splash red 2', 24, false);
                    
    addAnimationByIndices('SplashPixelpre', 'blue1', 'note splash blue 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpre', 'green1', 'note splash green 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpre', 'purple1', 'note splash purple 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpre', 'red1', 'note splash red 1', '0,1,2,3', 24)
                    
    addAnimationByIndices('Splashpreview', 'blue2', 'note splash blue 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'green2', 'note splash green 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'purple2', 'note splash purple 2', '0,1,2,3', 24)
    addAnimationByIndices('Splashpreview', 'red2', 'note splash red 2', '0,1,2,3', 24)
  

    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'blue1', 'note splash blue 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'green1', 'note splash green 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'purple1', 'note splash purple 1', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'red1', 'note splash red 1', 24, false);
                    
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'blue2', 'note splash blue 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'green2', 'note splash green 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'purple2', 'note splash purple 2', 24, false);
    luaSpriteAddAnimationByPrefix('SplashPixelpreDAD', 'red2', 'note splash red 2', 24, false);
                    
    addAnimationByIndices('SplashPixelpreDAD', 'blue1', 'note splash blue 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'green1', 'note splash green 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'purple1', 'note splash purple 1', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'red1', 'note splash red 1', '0,1,2,3', 24)
                    
    addAnimationByIndices('SplashPixelpreDAD', 'blue2', 'note splash blue 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'green2', 'note splash green 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'purple2', 'note splash purple 2', '0,1,2,3', 24)
    addAnimationByIndices('SplashPixelpreDAD', 'red2', 'note splash red 2', '0,1,2,3', 24)
end 
