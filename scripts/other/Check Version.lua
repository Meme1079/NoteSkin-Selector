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
               makeLuaSprite('BlackError', 0, 0)
               makeGraphic('BlackError', 1500, 1000, '000000')
               setObjectCamera('BlackError', 'other')
               addLuaSprite('BlackError', true)

               onShortCutText('Ceck1', 'Uh oh! Psych Engine('..version..') is outdated!', 0, 0, true)
               onTextPrefix('Ceck1', 'ff0000', 25, 'other')

               onShortCutText('Ceck2', 'Download Psych Engine('..CurrentVersion..')', 0, 30, true)
               onTextPrefix('Ceck2', 'ff0000', 25, 'other')

               onShortCutText('Ceck3', 'If you want to play on Psych Engine('..version..')', 0, 100, true)
               onTextPrefix('Ceck3', 'ff0000', 25, 'other')

               onShortCutText('Ceck4', "Go to 'scripts/other' folder and set the boolean in onCheckVersion() into false", 0, 130, true)
               onTextPrefix('Ceck4', 'ff0000', 25, 'other')
          end
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
