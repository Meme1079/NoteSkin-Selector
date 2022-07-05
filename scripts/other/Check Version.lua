local DeActivate = false
function onCreatePost()
     onCheckVersion(true) -- set it to false if you want to use the old version
end

function onStartCountdown()
     if DeActivate then
          return Function_Stop;
     end
end

function onCheckVersion(bool)
     CurrentVersion = '0.6.2'

     if bool == true then
          if version < CurrentVersion then
               DeActivate = true
               setProperty('camGame.visible', false)
               setProperty('camHUD.visible', false)
          else               
               local Texts = {'Ceck1', 'Ceck2', 'Ceck3', 'Ceck4'}
               for i = 1, #Texts do 
                    removeLuaText(Texts[i], true)
               end 
               removeLuaSprite('BlackError', true)
          end

          if DeActivate then
               makeLuaSprite('BlackError', 0, 0)  -- if you don't know what nil is, it's means no value 
               makeGraphic('BlackError', 1500, 1000, '000000')
               setObjectCamera('BlackError', 'other')
               addLuaSprite('BlackError', true)

               onShortCutText('Ceck1', 'Uh oh! Psych Engine('..version..') is outdated!', 0, 0, 'ff0000', 25, 'other', true)
               onShortCutText('Ceck2', 'Download Psych Engine('..CurrentVersion..')', 0, 50, 'ff0000', 25, 'other', true)
               onShortCutText('Ceck3', 'If you want to play on this Psych Engine('..version..')', 0, 150, 'ff0000', 25, 'other', true)
               onShortCutText('Ceck4', 'Go to scripts/other folder and set the boolean in onCheckVersion() into false', 0, 200, 'ff0000', 25, 'other', true)
          end
     end
end

function onShortCutText(string, text, x, y, color, size, cam, bool) -- too lazy
     makeLuaText(string, text, nil, x, y)
     setTextColor(string, color)
     setTextSize(string, size)
     setObjectCamera(string, cam)
     addLuaText(string, bool)
end
