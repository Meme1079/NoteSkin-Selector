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
               local Texts = {'Ceck1', 'Ceck2', 'Ceck3', 'Ceck4', 'Ceck5', 'Ceck6'}
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

               onShortCutText('Ceck1', 'Uh oh! this Psych Engine('..version..') is outdated!', 0, 0, true)
               onTextPrefix('Ceck1', 'ff0000', 23, 'other')

               onShortCutText('Ceck2', "NoteSkin Selector (9.0) script might break or crash, if you don't donwload Psych Engine("..CurrentVersion..")", 0, 30, true)
               onTextPrefix('Ceck2', 'ff0000', 23, 'other')

               onShortCutText('Ceck3', "Or download the NoteSkin Selector (9.0) - 0.5.2h Version, if it's on 0.5.2h", 0, 100, true)
               onTextPrefix('Ceck3', '00ff00', 23, 'other')

               onShortCutText('Ceck4', "A another solution is to go to 'scripts/other' go to line 3 and set it to false", 0, 130, true)
               onTextPrefix('Ceck4', 'ff0000', 23, 'other')

               onShortCutText('Ceck5', "if you're taking the risk", 0, 160, true)
               onTextPrefix('Ceck5', 'ff0000', 23, 'other')

               onShortCutText('Ceck6', "Also if you wan't to exit [Press 7] > [Delete key] > [Escape key]", 0, 230, true)
               onTextPrefix('Ceck6', '00ff00', 23, 'other')
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
