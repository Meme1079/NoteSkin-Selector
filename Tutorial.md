# Introduction
Ever want to add your custom Notskin/NoteSplashes just follow this funny step. Also go to [Psych Engine Wiki](https://github.com/ShadowMario/FNF-PsychEngine/wiki/Lua-Script-API) to understanding the code and [MayoPyschDiscussion](https://github.com/mayo78/PSYCHDISCUSSIONS) for help

# Adding The Note Preview

Before adding the note preview you must download 2 of these The NoteSkin and the Note Template

1. Find the NoteSkin you want like [HD Notes](https://gamebanana.com/mods/329070) By: Tails Craft 
<img width="513" alt="Screen Shot 2022-04-20 at 5 43 14 PM" src="https://user-images.githubusercontent.com/101881784/164382649-6f20b0dc-98be-411a-a129-861b685442d9.png">


2. Download This Template

![normal notes](https://user-images.githubusercontent.com/101881784/164382498-9783141e-d31a-45ee-b6ac-19494dbded55.png)

If you download the NoteSkin you want place it on noteskin file. Now once you done that Go To **GIMP** or **Photoshop** and place the Note Template you downloaded and NoteSkin. Place the NoteSkin texture on the template and should look like this.
![wdw](https://user-images.githubusercontent.com/101881784/164383492-99142c1a-ee83-42d4-aab2-1fa8d9c8f92a.png)

_Note: Choose the NoteSkin texture that is not Colored, Note Hit (Glow), and Note Hit_

If you done that place the template you made in the noteseen file

# Coding The NoteSkins
This one a bit tricky so read it carfully. Go to `function onCreate` and go to Note Preview section and copy this code

_Note: Please orginaze and fix the code not confused you or break the script_
```
    makeLuaSprite('preview4', 'noteseen/HD notes', PreX, PreY)
    setObjectCamera('preview4', 'camHUD')
    scaleObject('preview4', 0.5, 0.5)
    addLuaSprite('preview4', true)
```
```
    makeLuaSprite('previewDAD4', 'noteseen/HD notes', PreX, PreDADY)
    setObjectCamera('previewDAD4', 'camHUD')
    scaleObject('previewDAD4', 0.5, 0.5)
    addLuaSprite('previewDAD4', true)
```

<img width="1040" alt="Screen Shot 2022-04-21 at 2 05 55 PM" src="https://user-images.githubusercontent.com/101881784/164406225-38735289-04d2-4a4a-b75b-004df531306e.png">

Now go to Visibility section and copy this
```
    setProperty('preview4.visible', false)
```
```
    setProperty('previewDAD4.visible', false)
```

<img width="1040" alt="Screen Shot 2022-04-21 at 2 15 52 PM" src="https://user-images.githubusercontent.com/101881784/164404484-3c4f9c19-225e-4596-bce9-b88cff8315cd.png">

After that go to Pixel Note Section on the `Answer = semifalse` and copy this again

<img width="1037" alt="Screen Shot 2022-04-21 at 3 15 28 PM" src="https://user-images.githubusercontent.com/101881784/164406394-47b0bf8a-5a1e-4b2a-8051-d1306851d6b5.png">

Do it again on the `Answer = false` and copy this again

<img width="1040" alt="Screen Shot 2022-04-21 at 3 17 33 PM" src="https://user-images.githubusercontent.com/101881784/164406632-e6259e05-7474-436c-98af-5a05b8fea536.png">

Go to `function onUpdatePost(elapsed)` and go to BF section and Dad section and copy this code
```
        elseif NoteskinBF == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then  
            NoteskinBF = 0;
            Previews[5]()

            playSound('scrollMenu', 0.5, false)
        end
```
```
        elseif NoteskinDAD == 4 and getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') then  
            NoteskinDAD = 0;
            Previews[5]()

            playSound('scrollMenu', 0.5, false)
        end
```

<img width="1040" alt="Screen Shot 2022-04-21 at 2 41 49 PM" src="https://user-images.githubusercontent.com/101881784/164406932-9cc30630-6648-4655-8611-c38b4a360c23.png">

Now go to Previews table?? and copy this code

_Note: 1-3 and 5 is `setProperty('preview4.visible', false)` and 6-8 and 10 is `setProperty('previewDAD4.visible', false)` on the other preview table_   
```
    [4] = function()
        setTextString('Note', "NoteSkin: HD")

        setProperty('preview0.visible', false)
        setProperty('preview1.visible', false)
        setProperty('preview2.visible', false)
        setProperty('preview3.visible', false)
        setProperty('preview4.visible', true)
    end, 
```
```
    [9] = function()
        setTextString('NoteDAD', "NoteSkin: HD")

        setProperty('previewDAD0.visible', false)
        setProperty('previewDAD1.visible', false)
        setProperty('previewDAD2.visible', false)
        setProperty('previewDAD3.visible', false)
        setProperty('previewDAD4.visible', true)
    end, 
```

<img width="1040" alt="Screen Shot 2022-04-21 at 2 56 18 PM" src="https://user-images.githubusercontent.com/101881784/164407225-631c92e5-2cc5-4e08-b218-f60fa071e30d.png">

<img width="1040" alt="Screen Shot 2022-04-21 at 2 56 33 PM" src="https://user-images.githubusercontent.com/101881784/164407441-fadeb18c-3c06-4d24-934b-6104133f19ca.png">

Once you done that go to Aplhalel that copy this

`doTweenAlpha('previewAlpha4', 'preview4', 0, 0.1, 'linear')`

`doTweenAlpha('previewAlpha4DAD', 'previewDAD4', 0, 0.1, 'linear')`

<img width="1040" alt="Screen Shot 2022-04-21 at 3 00 01 PM" src="https://user-images.githubusercontent.com/101881784/164405617-6c82e5ca-f3bd-4b38-a522-f41e02371afe.png">

Go to `curBeat == 4` and copy this for performance

`removeLuaSprite('preview4', true);`

`removeLuaSprite('preview4DAD', true);`

<img width="1040" alt="Screen Shot 2022-04-21 at 3 08 44 PM" src="https://user-images.githubusercontent.com/101881784/164405776-8978125d-6a9d-400f-97e8-0d7a3a672839.png">

Now the last part of the tutorial. Go to Note Skins section and copy this
```
if NoteskinBF == 4 then
     setPropertyFromGroup('notes', i, 'texture', 'noteskin/HDNOTE_assets');   
     setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
end  
```
```
if NoteskinDAD == 4 then
     setPropertyFromGroup('notes', i, 'texture', 'noteskin/HDNOTE_assets');   
     setPropertyFromGroup('notes', i, 'noteSplashTexture', 'noteSplashes');
end  
```

<img width="1040" alt="Screen Shot 2022-04-21 at 3 35 11 PM" src="https://user-images.githubusercontent.com/101881784/164405845-8f6e5b8f-1842-49da-b8e9-843db6a01bfd.png">

<img width="1040" alt="Screen Shot 2022-04-21 at 3 35 48 PM" src="https://user-images.githubusercontent.com/101881784/164405926-cf513dd3-ed7f-4eaf-a2b2-c1855f12fb17.png">



