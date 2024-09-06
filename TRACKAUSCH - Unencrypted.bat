@echo off
setlocal EnableDelayedExpansion
title TRACKAUSCH - VERSION 1.2 - MADE BY FUTURESOFT

:menu
If Exist "savegame\wer.fg" GoTo announcewer
If Exist "savegame\a1.fg" GoTo menu1
GoTo menu0

:menuprocessold
if exist savegame\wer.fg (
  goto announcewer
) else (
  if exist savegame\a1.fg (
    goto menu1
  ) else (
    goto menu0
  )
)

:announcewer
cls
echo It appears that you have finished the main Trackausch campaign.
echo You have unlocked the missions menu.
echo.
pause
del /f savegame\wer.fg
goto menu1

:menu0
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.   New Game
echo 2.   Load Game
echo ----------------
echo 3.   Settings
echo 4.    About
echo 5. Achievements
echo ----------------
echo 6.     Exit
set /p input=
if %input%==1 goto ngame
if %input%==2 goto lgame
if %input%==3 goto settings
if %input%==4 goto about
if %input%==5 goto achievements
if %input%==6 exit

:menu1
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.   New Game
echo 2.   Load Game
echo 3.   Missions
echo ----------------
echo 4.   Settings
echo 5.    About
echo 6. Achievements
echo ----------------
echo 7.     Exit
set /p input=
if %input%==1 goto ngame
if %input%==2 goto lgame
if %input%==3 goto missions
if %input%==4 goto settings
if %input%==5 goto about
if %input%==6 goto achievements
if %input%==7 exit

:achievements
if exist savegame/a1.fg (
  set "ap=UNLOCKED"
) else (
  set "ap=LOCKED"
)
if exist savegame/a2.fg (
  set "usc=UNLOCKED"
) else (
  set "usc=LOCKED"
)
if exist savegame/a3.fg (
  set "ftg=UNLOCKED"
) else (
  set "ftg=LOCKED"
)

if exist savegame/a4.fg (
  set "rak=UNLOCKED"
) else (
  set "rak=LOCKED"
)

if exist savegame/a5.fg (
  set "get=UNLOCKED"
) else (
  set "get=LOCKED"
)

if exist savegame/a6.fg (
  set "rev=UNLOCKED"
) else (
  set "rev=LOCKED"
)

if exist savegame/m1.fg (
  if exist savegame/m2.fg (
    if exist savegame/m3.fg (
      if exist savegame/m4.fg (
        if exist savegame/m5.fg (
          echo achievementtrue >savegame/a7.fg
        ) else (
          echo XYZ
        )
      ) else (
        echo XYZ
      )
    ) else (
      echo XYZ
    )
  ) else (
    echo XYZ
  )
) else (
  echo XYZ
)

if exist savegame/a7.fg (
  set "alm=UNLOCKED"
) else (
  set "alm=LOCKED"
)

if exist savegame/a8.fg (
  set "exc=UNLOCKED"
) else (
  set "exc=LOCKED"
)

cls
echo ====TRACKAUSCH====
echo.
echo.
echo ACHIEVEMENTS
echo.
echo Anti-Preskism (Finish the main campaign): %ap%
echo Breaking The Boundary (Use the console): %usc%
echo Rookie... (Fail the game): %ftg%
echo My Hometown (Reach Akhatis Town): %rak%
echo Metal Bar Hit (Get arrested): %get%
echo Gun Ignited (Start the revolution): %rev%
echo An Extra Hand (Complete all missions): %alm%
echo Terror Of Trackausch (Finish the extreme campaign): %exc%
echo ----------------------------------------------------------
echo 1.Back
set /p input=
if %input%==1 goto menu

:ngame
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.TRACKAUSCH CAMPAIGN
echo 2.TRACKAUSCH EXTREME
echo ----------------------
echo 3.Back
set /p input=
if %input%==1 goto ngame0
if %input%==2 goto extremegame
if %input%==3 goto menu

:ngame0
cls
echo ====TRACKAUSCH====
echo.
echo.
echo Are you sure you want to start a new game?
echo This will replace your old save file.
echo.
echo 1.Yes
echo 2.No
set /p input=
if %input%==1 goto newgameprocess
if %input%==2 goto menu

:extremegame
cls
echo ====TRACKAUSCH====
echo.
echo.
echo TRACKAUSCH EXTREME is for extreme people.
echo Your game will NOT save and there's more
echo ways and places you can die. You will
echo NOT unlock any achievements, except
echo "Terror of Trackausch" when finishing
echo the campaign.
echo.
echo Are you sure you want to continue?
echo.
echo 1.Yes
echo 2.No
set /p input=
if %input%==1 goto extremeprocess
if %input%==2 goto ngame

:settings
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.Change Color
echo 2.Developer Notes
echo 3.Console
echo 4.Delete Save Files
echo 5.Extras
echo --------------------
echo 6.Back
set /p input=
if %input%==1 goto gcolor
if %input%==2 goto devnotes
if %input%==3 goto devconsole
if %input%==4 goto deletesavefiles
if %input%==5 goto extras
if %input%==6 goto menu

:extras
if exist savegame/a1.fg goto extraswork
cls
echo You didn't finish the game. You must have finished the game to see the extras menu.
echo.
set /pause=Press any key to return...
goto settings

:extraswork
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.Credits
echo 2.Development
echo -------------
echo 3.Back
set /p input=
if %input%==1 goto creditsmenu
if %input%==2 goto development
if %input%==3 goto settings

:combatsituations
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.State-88 Coast
echo 2.

:creditsmenu
cls
echo ====TRACKAUSCH====
echo.
echo.
echo Are you sure you want to see the credits?
echo.
echo Exiting the game during the credits will let the song
echo play even with the game closed. The song will end on
echo its own.
echo.
echo 1.YES
echo 2.NO
set /p input=
if %input%==1 goto credits
if %input%==2 goto extras

:development
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.Behind-The-Scenes
echo 2.Story
echo -------------------
echo 3.Back
set /p input=
if %input%==1 goto bts
if %input%==2 goto story
if %input%==3 goto extras

:bts
cls
echo ====TRACKAUSCH====
echo.
echo.
echo The game was coded in Batch. Originally, Trackausch would have been the name
echo of a Half-Life 2 mod we planned to make and name it as a project for Futuresoft.
echo.
echo The mod would've been about a massive prison with inmates becoming aliens.
echo.
echo Since 27th December (Futuresoft Anniversary) was close, we decided to make it
echo a text-adventure game.
echo.
echo We used a song from the Matrix movie made by Lunatic Calm, we thought it sounded
echo cool and fit the game.
echo.
echo We've worked 5 days, 8 hours everyday, to deliver the best we could've done.
echo.
echo If you see this, thank you for playing our game.
echo.
set /pause=Press any key to return...
goto development

:story
cls
echo ====TRACKAUSCH====
echo.
echo.
echo The lore of Trackausch is a sequel to the Survivor games, since you play as
echo Ken Newman's son, Wallace Newman.
echo.
echo The lore was supposed to be for an RPG game that we abandoned for a while
echo and the fate of that game is unknown. It had no connection to the Survivor
echo universe whatsoever. The game's lore is heavily inspired by the Half-Life 2
echo and Wolfenstein lores. These are games that impressed us.
echo.
echo The RPG game we planned happens way before this game, about 5 years after
echo the country of Boerum turned into a Preskal country. People still lived in
echo regular houses.
echo.
set /pause=Press any key to return...
goto development

:deletesavefiles
cls
echo Are you sure you want to delete your save files?
echo This will delete all your progress.
echo.
echo 1.YES
echo 2.NO
set /p input=
if %input%==1 goto delsave
if %input%==2 goto settings

:delsave
cls
rmdir /s /q savegame
mkdir savegame
cls
echo Save files deleted.
echo.
pause
goto menu

:gcolor
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 1.Green
echo 2.Blue
echo 3.White
echo 4.Red
echo 5.Aqua
echo 6.Yellow
echo 7.Pink
echo ----------------
echo 8.Back
set /p input=
if %input%==1 color a
if %input%==2 color 1
if %input%==3 color 7
if %input%==4 color 4
if %input%==5 color 0B
if %input%==6 color 0E
if %input%==7 color 0d
if %input%==8 goto settings
goto gcolor

:devnotes
cls
echo ====TRACKAUSCH====
echo.
echo.
echo "I really recommend reading the about menu
echo and maybe changing the difficulty before
echo playing. Leave a good comment after you
echo end your session. Have fun." - Futuresoft
echo.
set /pause=
goto settings

:about
cls
echo ====TRACKAUSCH====
echo.
echo.
echo 178 years ago, a revolution happened during the Grand Imperialist War, where 17 other 
echo countries participated, and fought against eachother. There were two alliances in this
echo war, The Republic Stars and The Imperialist Powers. Heronos was part of the Imperialist
echo Powers, and Gibara was part of the Republic Stars. 5 years after the start of the war, the
echo Imperialist Powers and Republic Stars decided that the war was only causing bad things, so
echo they signed an alliance to keep all countries peaceful, and they shall not attack each other,
echo but instead, help, forming the Northern Karmalian Peace Nations (NKPN). Heronos and Gibara
echo were still enemies and did not want to be part of this. This caused them to be threatened
echo by the imperialists, so they realized that they must join it. They were still enemies, so to
echo prevent any wars, a person named Tesmonium, who is the supreme commander of the imperialist 
echo country Janhas, gave the king of Gibara the idea of a country union for permanent peace, so
echo Heronos and Gibara united and formed Boerum. 
echo.
echo 157 years ago, Boerum was attacked by Tesmonium's son, Carol, the prince of Solagrat, declared
echo war on Boerum, making them requesting the help of the the NKPN. Because Boerum formed ~105 years ago
echo and refused to enter the NKPN, their help was refused. The situation Boerum was in was a complete
echo disaster. This caused Boerum to have a hyperinflation. Due to the fact that people started leaving
echo the country, the king of Boerum, Preskos, created a system called Preskism, a combination of communism
echo and nazism. It incorporated dictatorship, antisemitism, anti-Slavism, disdain for liberal democracy, all
echo properties are owned by the community and each person works and receives based on their needs. The king 
echo also established a system of local protection, with enforced guards.
echo.
echo For unfortunate reasons, according to Preskos, Boerum was only a country. For over 80 years, Boerum
echo kept being at war and forced people to live in even worser conditions, and conditions were getting 
echo better, then they were getting worser again, and so on. Preskos was considered invincible for living
echo this long. Boerum had taken over the world with its terribilism. It was no longer called Boerum, 
echo nothing was called Boerum, no more countries, only states, cities, zones, towns, all of which are 
echo abandoned. Preskal Commanders randomly chose what abandoned city they wanted to rule and forced 
echo citizens to rebuild the city and Preskal Soldiers to be the force of the city.
echo.
echo Science has gone far as well, Earth looking like people imagined it, with very few trees, everything
echo working through electricity, etc. Preskos has also established a system of spaceships, which he sends
echo soldiers and true citizens with from planet to planet to collect resources. This also gave Preskos the
echo idea of building his own giant ship, which he called the Mothership, where he, Elite Preskal Guards and
echo Elite Preskal Soldiers live, to keep themselves safe. Since Preskos wasn't on Earth anymore, he let someone
echo else take care of Earth and the Preskism, that being the Preskal General, General Redfield.
echo.
echo Now, onto you... You are not just a simple man, you are the son of a missing man who saved the Earth many
echo times, that man being Ken Newman. You're his son, Wallace Newman. Ken went missing 9 years ago and you don't
echo know where he is. You are the leader of the people rebelling against the Preskism, the leader of the rebellion.
echo You were walking on Earth and had the unfortunate luck of being captured by a Bhanshak ship and sent onto a pod
echo on the Mothership for a scientist inspection. What would this mean?
echo.
echo.
echo.
set /pause=Press any key to return to the menu...
goto menu

:lgame
cls
goto lgameprocess

:lgameprocess
if exist savegame/sl1.fg goto chapter1

if exist savegame/sl2.fg goto explosion

if exist savegame/sl3.fg goto pathchoose01

if exist savegame/sl4.fg goto onearth

if exist savegame/sl5.fg goto shooting

if exist savegame/sl6.fg goto ripradio

if exist savegame/sl7.fg goto chapter3

if exist savegame/sl8.fg goto chapter4

if exist savegame/sl9.fg goto chapter5

if exist savegame/sl10.fg goto chapter6

if exist savegame/sl11.fg goto chapter7

if exist savegame/sl12.fg goto selectchapter

cls
echo Unable to load game.
set /pause=
goto menu

:selectchapter
cls
echo ====TRACKAUSCH====
echo.
echo.
echo Select a chapter:
echo 1.In The Beginning...
echo 2.Preskal Industries
echo 3.State-88 Coast
echo 4.Furugelm Preskal Base
echo 5.Secret Preskal Agency
echo 6.Huzakhev Prison
echo 7.The Revolution
echo -----------------------
echo 8.Return to menu
set /p input=
if %input%==1 goto chapter1
if %input%==2 goto onearth
if %input%==3 goto chapter3
if %input%==4 goto chapter4
if %input%==5 goto chapter5
if %input%==6 goto chapter6
if %input%==7 goto chapter7
if %input%==8 goto menu

:missions
cls
echo ====TRACKAUSCH====
echo.
echo.
echo Select a location:
echo 1.Mothership
echo 2.State-88
echo 3.Furugelm Island
echo 4.Huzakhev Prison
echo 5.State-15
echo ------------------
echo 6.Return to menu
set /p input=
if %input%==1 goto missionmothership
if %input%==2 goto missionstate88
if %input%==3 goto missionfurugelm
if %input%==4 goto missionhuzakhev
if %input%==5 goto missionstate15
if %input%==6 goto menu

:missionmothership
cls
echo ====TRACKAUSCH====
echo.
echo.
echo MISSION - Mothership
echo.
echo Elite Preskal Soldiers and Elite Preskal Guards are in the Mothership.
echo There's important documents to find and steal inside the Mothership,
echo made by Preskal scientists. Infiltrate the Mothership and steal the
echo documents.
echo.
echo 1.  Play
echo -----------
echo 2. Return
set /p input=
if %input%==1 goto startmothership
if %input%==2 goto missions

:missionstate88
cls
echo ====TRACKAUSCH====
echo.
echo.
echo MISSION - State-88
echo.
echo Many Preskal Soldiers are being deployed in State-88 right now, trying
echo to find your location. Stop these deployments and kill the soldiers.
echo.
echo 1.  Play
echo -----------
echo 2. Return
set /p input=
if %input%==1 goto startstate88
if %input%==2 goto missions

:missionfurugelm
cls
echo ====TRACKAUSCH====
echo.
echo.
echo MISSION - Furugelm Island
echo.
echo Preskal Soldiers are building something on the island, trying to turn it
echo into a fortress of some sort. They were able to build artillery to defend
echo the island from the large state. Go to the island and stop them.
echo.
echo 1.  Play
echo -----------
echo 2. Return
set /p input=
if %input%==1 goto startfurugelm
if %input%==2 goto missions

:missionhuzakhev
cls
echo ====TRACKAUSCH====
echo.
echo.
echo MISSION - Huzakhev Prison
echo.
echo The Preskals are trying to take back the Huzakhev Prison which is now a
echo rebel hideout. Help out the rebels there and defend the prison from any
echo Preskal forces.
echo.
echo 1.  Play
echo -----------
echo 2. Return
set /p input=
if %input%==1 goto starthuzakhev
if %input%==2 goto missions

:missionstate15
cls
echo ====TRACKAUSCH====
echo.
echo.
echo MISSION - State-15
echo.
echo The Preskals are trying to take back and repair the Preskism Nexus in
echo State-15, but you must not let them do that. Go and kill them.
echo.
echo 1.  Play
echo -----------
echo 2. Return
set /p input=
if %input%==1 goto startstate15
if %input%==2 goto missions

:devconsole
cls
echo ====TRACKAUSCH====
echo.
echo.
set /p command=
%command%
if exist savegame/a2.fg (
  goto devconsole
) else (
  echo ACHIEVEMENT2>>savegame/a2.fg
  goto devconsole
)

:extremeprocess
cls
start files\extremecampaign.bat
exit

:newgameprocess
cls
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 1 >savegame/sl1.fg
echo.
goto chapter1

:chapter1
echo.
ping localhost -n 4 >null
cls
echo     CHAPTER 1
ping localhost -n 4 >null
echo.
echo In The Beginning...
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: CAPTURED
ping localhost -n 4 >null
echo CAPTOR: Bhanshak Automated-V2 Spaceship
ping localhost -n 5 >null
echo VICTIM: Human, 38 years old, citizenship unidentifiable
ping localhost -n 7 >null
echo PURPOSE: Controlling Involuntary Movements of the Nervous System
cls
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *It's been 16 months since I've last seen my family.*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *Why did they have to separate people in states...*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *At least they respect the races...*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *They understand this is how humans exist...*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *Too bad they don't like religion...*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *But the rebels do... And even the bible says:*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *"but the Lord laughs at the wicked,*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *for he knows their day is coming."*
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *I am in a lot of pain.*
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *But I ain't dead...*
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *So I'll keep moving...*
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *I can't move...*
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo This individual seems to be awake...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'll control the nervous system and put him back to
echo sleep so I can test the BH7 substances on him.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Module A2,
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Module A2, nervous system,
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Module A2, nervous system, eyes,
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Module A2, nervous system, eyes, activators,
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Module A2, nervous system, eyes, activators, OFF.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *Wait 'till I get my hands on Preskos. Bastard.*
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo Hours later...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Nervous system active...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Alrighty, I'm sending you back to Earth buddy.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Wait wait wait...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What's up, Paul?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Didn't General Redfield said to identify everyone
echo on the ship?
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Uh, yes... But I can't identify this one.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You really don't know this guy?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo No...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo No... I don't-
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo No... I don't think I do.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo It's Wallace Newman.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo He's the leader of the rebellion.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo So this is him...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Shouldn't we just send him directly to General Redfield
echo instead?
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yeah, he might be happy...
ping localhost -n 5 >null
:explosion
cls
delete savegame/sl1.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 2 >savegame/sl2.fg
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
echo.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo WHAT WAS THAT?
ping localhost -n 4 >null
cls
del sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I---0-------0---I                    T
echo T              I       I       I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo SOMETHING EXPLODED. WE NEED TO USE AN ESCAPE POD.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo TO HELL WITH THE ESCAPE POD, I'M USING A BHANSHAK.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I--0---------0--I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo SEE YOU WHEN I SEE YOU, PAUL.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Nervous Module Subsystems have been disabled.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Refrigeration System has been disabled.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T              I-------I-------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T---------------               ---------------------T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T----------------------I----------------------------T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Eliberating patient 526...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  --       --  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I am awake.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Welcome back, Wallace Newman.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Threat identified as WALLACE NEWMAN.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Activating Mothership safety protocol
echo FOUNDER ENFORCEMENT.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Please remain still as Preskal Soldiers
echo are coming to your current location.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm not staying anywhere.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Now, where do I go?
ping localhost -n 4 >null

:pathchoose01
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 3 >savegame/save.fg
cls
echo Choose a path:
echo.
echo 1.Pod Escape
echo 2.Mothership Main Hallway
set /p input=
if %input%==1 goto podescape
if %input%==2 goto mainhallway

:mainhallway
cls
echo Going to main hallway...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo THREAT IDENTIFIED.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *shoots*
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo gioearg >savegame/a3.fg
cls
echo GAME OVER.
echo.
echo 1.Load game
echo 2.Return to menu
set /p input=
if %input%==1 goto pathchoose01
if %input%==2 goto menu

:podescape
cls
echo Going to the escape pods...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yes, one pod left.
ping localhost -n 4 >null
cls
echo Going to escape pod 13...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Alright, pretty comfortable in here.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Retrieving mothership module...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Identifying passenger...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Welcome to the escape pod.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: You may only use this pod in case of an
echo emergency on the Mothership.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: You will be transported to Earth.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: To travel to other planets, you may use
echo the Utharzum Ship for squad transport only and make
echo sure to activate the Mothership Emergency Protocol.
ping localhost -n 9 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Please say 'YES' to launch the escape pod
echo or say 'NO' to open the escape pod so you can leave.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo YES.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Launch will start in...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: 5...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: 4...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: 3...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: 2...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: 1...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROBOT VOICE: Launching escape pod.
ping localhost -n 5 >null
cls
ping localhost -n 5 >null
:onearth
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 4 >savegame/save.fg
cls
set "file=audio/falldownwhistle.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
ping localhost -n 4 >null
cls
echo     CHAPTER 2
ping localhost -n 4 >null
echo.
echo  Preskal Industries
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: FREE
ping localhost -n 4 >null
echo LOCATION: Newcast Town, State-26, Earth
ping localhost- n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Am I on Earth?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Oh, thank god.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What the hell happened here...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I've never seen rebels like this... They're fearless...
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo And they're my people...
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 5 >null
cls
echo You found a rebel hideout.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I've been a trained soldier for years.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo That Wallace guy doesn't-
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Oh my.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Greetings.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Are you Wallace?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yes, that's me.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You are uh
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You are quite big.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Bigger than I expected.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yeah, well, my father saved Earth many times.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo He fought aliens and monsters all day and night back
echo in the day.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Right.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Ken Newman, right?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Indeed.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Well, you're more than welcome in this small hideout.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I own it.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I can finally tell people Wallace walked through here.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Unfortunately, it's no longer a popular hideout anymore.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo People moved out. No more weapons, just a very small
echo amount of food left. And me, of course.
ping localhost -n 10 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo There's a gun shop next to this, you might find a
echo gun you like.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Alright, thank you.
ping localhost -n 3 >null
cls
echo Going to the gun shop...
ping localhost -n 6 >null
cls
set /pause=Press any key to pick up a gun...
cls
echo Gun picked up.
ping localhost -n 3 >null
cls
echo Going back to the hideout...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I found a gun, thankfully.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Good. Now what?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I was thinking maybe we should go kill some Preskals.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Sure. Let's go.
ping localhost -n 4 >null
cls
:shooting
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 5 >savegame/save.fg
cls
echo Going...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo REQUESTING ASSISTANCE AT NEWCAST, TWO ARMED MEN.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What's up, fool?
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  ----   T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Idiots. All of them.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We're gonna kill a lot more.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Get ready for a horde.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm always ready.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo PRESKAL DOWN, REQUESTING ASSISTANCE AT NEWCAST.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  ----   T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm a new rebel. I'm here to fight with you, Wallace.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I appreciate it.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The horde is too massive. We have to run.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Run where?
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I know. Run away.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Shut up. We have to hide.
ping localhost -n 4 >null
cls
echo Running...
ping localhost -n 6 >null
cls
echo Hiding...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Let's hope they don't hear us.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Shhh.
ping localhost -n 4 >null
cls
echo Minutes later...
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm gonna steal the radio transmitter from my escape pod.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I have to find my team again in State-88, the town
echo near the coast.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I thought State-88 was all a coast?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yeah, well, the sea is large and I have to cross the
echo State-88 Highway.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo They're in Akhatis Town.
ping localhost -n 4 >null
cls
:ripradio
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 6 >savegame/save.fg
cls
echo Going to pod...
ping localhost -n 5 >null
cls
echo Ripping radio transmitter...
ping localhost -n 6 >null
cls
echo Going back to hideout...
ping localhost -n 5 >null
:wpattern
cls
echo You have to fix the radio transmitter to connect with your team.
ping localhost -n 5 >null
cls
echo Fix the wire pattern:
echo.
echo  RED  BLUE  GREEN
echo   ?    ?      ?
echo BLUE GREEN   RED
echo.
echo 1. GREEN, BLUE, RED
echo 2. RED, GREEN, BLUE
echo 3. GREEN, RED, BLUE
echo.
set /p input=
if %input%==3 goto fixwpattern
cls
echo Incorrect pattern.
ping localhost -n 3 >null
cls
goto wpattern

:fixwpattern
cls
echo Fixing pattern...
ping localhost -n 4 >null
cls
echo Pattern fixed.
ping localhost -n 4 >null
cls
echo Connecting...
ping localhost -n 5 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo UNKNOWN: Hello? Who's this?
ping localhost -n 6 >null
echo YOU: It's Wallace, I don't know where I am.
ping localhost -n 5 >null
echo UNKNOWN: Confirm your status, Wallace.
ping localhost -n 5 >null
echo YOU: Location 4-10, vitals safe.
ping localhost -n 5 >null
echo UNKNOWN: Wallace, we thought that was it for you.
ping localhost -n 5 >null
echo UNKNOWN: You were really unlucky to get picked by that Bhanshak...
ping localhost -n 5 >null
echo YOU: Yeah, well, I don't know where I am, and I want to get back to you, guys.
ping localhost -n 6 >null
echo UNKNOWN: Let me check one second...
ping localhost -n 7 >null
echo UNKNOWN: You're in Newcast Town, State 26, which is close to the Kamchatka Peninsula in Russia.
ping localhost -n 7 >null
echo YOU: And... Where is Akhatis? How far away is it?
ping localhost -n 6 >null
echo UNKNOWN: A little bit far...
ping localhost -n 4 >null
echo UNKNOWN: Vladivostok, an old coast city near the border between Russia and China.
ping localhost -n 5 >null
echo UNKNOWN: That's where you'll be going. Approximately 3500 kilometers.
ping localhost -n 5 >null
echo YOU: Ah... Great...
ping localhost -n 5 >null
echo YOU: Any transport maybe?
ping localhost -n 5 >null
echo UNKNOWN: This would be extremely risky, but maybe let a Bhanshak capture you again?
ping localhost -n 7 >null
echo UNKNOWN: This is risky because Preskos is now checking every patient captured by them.
ping localhost -n 7 >null
echo UNKNOWN: If you do pass unnoticed, you can escape the pod and use another escape pod.
ping localhost -n 7 >null
echo UNKNOWN: You'll aim the escape pod to Vladivostok's coast and you'll find us there.
ping localhost -n 6 >null
echo YOU: What about Earth transport? A jeep maybe?
ping localhost -n 6 >null
echo UNKNOWN: Wallace, when was the last time you saw a non-Preskal vehicle?
ping localhost -n 6 >null
echo YOU: Nevermind then.
ping localhost -n 4 >null
echo YOU: Would there be any benefits if I walk those 3500 kilometers?
ping localhost -n 7 >null
echo UNKNOWN: Except than a cardio training, I don't think there'd be any other benefits.
ping localhost -n 7 >null
echo UNKNOWN: And except for the fact that there's a much higher chance you'll be still alive, unlike the Mothership mission.
ping localhost -n 9 >null
echo YOU: I'll think about it until tomorrow.
ping localhost -n 6 >null
echo UNKNOWN: I say you think about it A.S.A.P, we're planning the revolution in 3 days.
ping localhost -n 7 >null
echo YOU: 3 days?. Do you think I'm gonna make it on foot to Vladivostok in 3 days?
ping localhost -n 7 >null
echo UNKNOWN: It's up to you.
ping localhost -n 4 >null
echo UNKNOWN: We'll need you there, Wallace.
ping localhost -n 5 >null
echo YOU: I know... I know...
ping localhost -n 4 >null
echo YOU: And I'll do it...
ping localhost -n 5 >null
echo YOU: For freedom.
ping localhost -n 4 >null
echo UNKNOWN: Death to the Preskism.
ping localhost -n 4 >null
echo YOU: Death to the Preskism.
ping localhost -n 8 >null
cls
echo Connection lost.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm gonna sleep.
ping localhost -n 4 >null
:chapter3
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 7 >savegame/save.fg
cls
ping localhost -n 4 >null
cls
echo     CHAPTER 3
ping localhost -n 4 >null
echo.
echo   State-88 Coast
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: ON-MISSION
ping localhost -n 4 >null
echo LOCATION: Kheydzhan, Magadan Oblast, State-88, Earth
ping localhost -n 4 >null
echo DESTINATION: Vladivostok, Primorsky Krai, State-88, Earth
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Well, rebels, it was nice seeing you.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo So are you going on-foot?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What, do I wanna kill myself for nothing?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You still tried though...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo NO.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Jesus, fine. Anyways, have a nice trip.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Bye, Wallace.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Goodbye, guys.
ping localhost -n 3 >null
cls
echo Going...
ping localhost -n 6 >null
cls
echo You encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
set /a psn = 6
cls
:preskals1
if %psn% == 0 goto afterpreskals1
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals1
:afterpreskals1
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 6 >null
cls
echo You found an abandoned Preskal Base.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo No one's here, huh?
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *sees a radio* A Preskal radio, now I can hear every
echo word they say.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: REQUESTING ASSISTANCE AT UTLAND, STATE-52,
echo PLEASE RESPOND.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: OVERLORD-ASIA, THIS IS BRAVO-9-DELTA, REQUESTING
echo USE OF BHANSHAK.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: BRAVO-9-DELTA, THIS IS OVERLORD-ASIA, BHANSHAK
echo TRAFFIC IS ON CODE RED, YOU ARE NOT AUTHORIZED TO USE
echo THE BHANSHAK.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: OVERLORD-AMERICA, THIS IS NOVEMBER-4-SIERRA,
echo REQUESTING AUTHORIZATION FOR SELF-TRANSPORT TO
echo ASIA, KAMCHATKA PENINSULA.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: NOVEMBER-4-SIERRA, THIS IS OVERLORD-AMERICA,
echo PLEASE STATE A PURPOSE FOR TRANSPORT TO KAMCHATKA.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: OVERLORD-AMERICA, THIS IS NOVEMBER-4-SIERRA,
echo WE'RE ON OUR WAY TO HUNT DOWN WALLACE NEWMAN, BUT
echo HE'S IN ASIA RIGHT NOW.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: NOVEMBER-4-SIERRA, THIS IS OVERLORD-AMERICA,
echo YOU WILL NOT USE SELF-TRANSPORT, A BHANSHAK WILL BE
echo DISPATCHED TO YOU IN A FEW SECONDS.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Do these guys ever even stop talking?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Those idiots think I'm in Kamchatka Peninsula.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo They're not gonna find me.
ping localhost -n 5 >null
cls
echo Going...
ping localhost -n 8 >null
cls
echo You encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
set /a psn = 8
cls
:preskals2
if %psn% == 0 goto afterpreskals2
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals2
:afterpreskals2
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going... (this will take a minute)
ping localhost -n 60 >null
cls
echo You found an Attack-Bhanshak ship.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm gonna be using this to get to my team.
ping localhost -n 5 >null
cls
echo Boarding the Attack-Bhanshak...
ping localhost -n 7 >null
cls
echo Flying...
ping localhost -n 12 >null
cls
echo Landing...
ping localhost -n 6 >null
cls
echo Achievementes >savegame/a4.fg
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hello, team.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I X           X I                    T
echo T              I X --------- X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Wallace, you're back.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What's up, Wallace?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I heard you're starting a revolution?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yeah, we wanted to.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Until we found out about the SPA, Secret Preskal
echo Agency.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Interesting. Are they like the CIA?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Indeed they are, and somehow, word got to them.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We have to destroy their agency until word gets to
echo the whole Preskism.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Are they heavily armed? Where are they?
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo There's a guy who knows where their agency is.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Unfortunately, he's been captured on an island by
echo Preskal Soldiers.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What island?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The Furugelm Island in Primorye, still State-88.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Well, then let's go and free him.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hold on just a second.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We don't know if the guys that captured him are
echo SPA or regular Preskal Soldiers.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo If they're SPA, they could get information off of us.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The SPA will find out about our attack whether or not
echo they're there. Let's go.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Fine.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 8 >null
:chapter4
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 8 >savegame/save.fg
echo achievementtrue >savegame/a5.fg
cls
echo     CHAPTER 4
ping localhost -n 4 >null
echo.
echo Furugelm Preskal Base
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: ON-MISSION
ping localhost -n 4 >null
echo LOCATION: Vladivostok, Primorsky Krai, State-88, Earth
ping localhost -n 4 >null
echo DESTINATION: Furugelm Island, Primorsky Krai, State-88, Earth
ping localhost -n 4 >null
cls
echo You encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
set /a psn = 7
cls
:preskals3
if %psn% == 0 goto afterpreskals3
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals3
:afterpreskals3
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo How much do we have left?
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Don't worry, it's not 3500 kilometers like you had,
echo it's only 150 kilometers.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo It's still a lot while on-foot. You promised the people
echo start the revolution in 3 days, we can't do all this
echo in 3 days.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo So you're just gonna give up right here right now?
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo That's not what I'm saying. Maybe we should tell them
echo the revolution will be delayed. It might also help
echo us when it comes to tricking the SPA.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I think it's pretty obvious that the rebels know
echo the revolution will be delayed.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Oh well...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Why didn't we take my Attack-Bhanshak though?
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo So you can have microplanted trackers on you after
echo the SPA finds out that you were in that ship? With
echo fingerprints and everything? I don't think so.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Alright then.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 25 >null
cls
set /a psn = 6
cls
:preskals4
if %psn% == 0 goto afterpreskals4
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals4
:afterpreskals4
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 20 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo There it is. Furugelm island.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I see the soldiers.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We'll shoot them from the distance, but be careful
echo to not accidentally kill our guy.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo *aims*
ping localhost -n 4 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Dead. Let's go to the guy.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo His name is Ray. Be nice to him.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RAY.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I     -----     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo What's up, Michael?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I     -----     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Wallace, wow. I never thought I'd see you in person.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Greetings. Do you know where the SPA is?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I     -----     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo That's why you came here?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yes, that's why.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I     -----     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Ugh. It's in State-68. Sapporo, Hokkaido island.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Okay, thank you.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Let's go back to Vladivostok now.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Our team removed trackers from the Attack-Bhanshak
echo and they're coming to get us right now.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Perfect.
ping localhost -n 5 >null
cls
:chapter5
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 9 >savegame/save.fg
cls
echo     CHAPTER 5
ping localhost -n 4 >null
echo.
echo Secret Preskal Agency
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: ON-MISSION
ping localhost -n 4 >null
echo LOCATION: Sea of Japan, State-68, Earth
ping localhost -n 4 >null
echo DESTINATION: Sapporo, Hokkaido Island, State-68, Earth
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo People of this Attack-Bhanshak, get ready for landing
echo in 5 minutes.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm ready.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm ready.
ping localhost -n 4 >null
cls
echo Flying...
ping localhost -n 15 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Landing. Prepare.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ALL UNITS, HOSTILE ATTACK-BHANSHAK IN SECRET PRESKAL
echo AGENCY.
ping localhost -n 7 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
set /a psn = 25
cls
:preskals5
if %psn% == 0 goto afterpreskals5
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals5
:afterpreskals5
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 5 >null
cls
set /a psn = 18
cls
:preskals6
if %psn% == 0 goto afterpreskals6
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals6
:afterpreskals6
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm exploding this base.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm covering you.
ping localhost -n 4 >null
cls
echo Planting dynamite...
ping localhost -n 7 >null
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
ping localhost -n 6 >null
cls
ping localhost -n 4 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I===============I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I X  -------  X I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 3 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I---------------I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    =======    I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo HANDS UP, DON'T MOVE.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Shit...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T         I    I               I    I               T
echo T         I    I---------------I    I               T
echo T         I            I            I               T
echo T         I            I            I               T
echo T         I------------I------------I               T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
:chapter6
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl11.fg
delete savegame/sl12.fg
echo 10 >savegame/save.fg
echo achievementtrue >savegame/a4.fg
cls
echo     CHAPTER 6
ping localhost -n 4 >null
echo.
echo   Huzakhev Prison
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: IMPRISONED
ping localhost -n 4 >null
echo LOCATION: Huzakhev Prison, Shebunino, Sakhalin Oblast, State-88, Earth
ping localhost -n 4 >null
echo RESPECT: MAXIMUM
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo INMATE 520, STATE YOUR NAME.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Wallace Newman.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo INMATE 520, YOU'RE SLEEPING IN CELL 16.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You'll be sleeping from my guns too.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo WHAT DID YOU SAY?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Nothing. I'm going.
ping localhost -n 4 >null
cls
echo Going to cell 16...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You're Wallace, right?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo That's me.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Is the revolution gonna happen if you're here?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hell yeah it will, we're escaping today.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo How do you plan on doing that? It seems impossible.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Don't ask why, ask how.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The wall in our cell seems to be made out of simple 
echo metal.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The chemical reactor in the back rooms of this prison
echo might have gallium.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo If we put some gallium on the wall, the metal will
echo dissolve easily and we're gonna escape.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hm. Interesting.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo How will we get to the reactor though?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Unfortunately, I'm gonna need you to get the gallium
echo for me.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo They'll never let me see inside the chemical reactor.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You're gonna speak to a Preskal Guard and ask him if
echo you can take a look at the chemical reactor.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Okay.
ping localhost -n 3 >null
cls
echo Going...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hello Preskal, can I see the chemical reactor?
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo GO AHEAD. YOU HAVE 5 MINUTES.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Now, where is that gallium...
ping localhost -n 4 >null
cls
echo Waiting...
ping localhost -n 20 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hey, I'm back.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Good, give me the gallium.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Here. *gives* So we're gonna do this?
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Yes, we are.
ping localhost -n 3 >null
cls
echo Placing gallium...
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Freedom...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo This isn't freedom... Tomorrow is freedom.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Let's go.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Wait, I forgot we're on an island...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I have to find a radio to call my team.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I stole one from a guard when I left the chemical
echo reactor room.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Perfect.
ping localhost -n 5 >null
cls
echo Connecting...
ping localhost -n 6 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo UNKNOWN: Hello? Who's this?
ping localhost -n 6 >null
echo YOU: It's Wallace, I'm in Shebunino, near the Huzakhev Prison, come rescue me.
ping localhost -n 8 >null
echo UNKNOWN: Confirm your status, Wallace.
ping localhost -n 5 >null
echo YOU: Location 8-20, vitals safe.
ping localhost -n 5 >null
echo UNKNOWN: Wallace, we don't have transport and Michael and Paul are dead.
ping localhost -n 6 >null
echo YOU: Then what are we gonna do about the revolution?
ping localhost -n 6 >null
echo UNKNOWN: I'm guessing we're cancelling it.
ping localhost -n 5 >null
echo YOU: No, we're not, I'm leading it, we're gonna do this.
ping localhost -n 6 >null
echo UNKNOWN: Alright, but we don't have transport to get you here.
ping localhost -n 6 >null
echo YOU: Check the shack, Michael had a Bhanshak there, I think.
ping localhost -n 8 >null
echo UNKNOWN: Yes, we found, we're coming. You just wait.
ping localhost -n 6 >null
cls
echo Connection lost.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We've got transport.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Perfect.
ping localhost -n 3 >null
cls
echo Waiting...
ping localhost -n 7 >null
cls
echo Flying...
ping localhost -n 25 >null
cls
echo Landing...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Alright, we're here. I'm gonna announce the revolution
echo on stage.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Good luck.
ping localhost -n 4 >null
cls
echo Going to stage microphone...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Hello, rebels.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo A lot has happened to me the past 3 days.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo These 3 days we were supposed to be planning this
echo revolution, but we weren't able to do that.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You will all be a part of my revolution.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We're doing it today. This is the 3rd day, we're doing
echo it today.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I've sent people to steal Bhanshaks and get them here.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We'll wait for them to get here, then we'll be flying
echo to San Francisco, to kill General Redfield.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The revolution will take place in San Francisco.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The Preskals are gonna feel the squeeze.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You are all gonna fight. Good luck.
ping localhost -n 6 >null
:chapter7
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl12.fg
echo 11 >savegame/save.fg
echo achievementtest >savegame/a6.fg
cls
echo     CHAPTER 7
ping localhost -n 4 >null
echo.
echo   THE REVOLUTION
ping localhost -n 5 >null
cls
ping localhost -n 4 >null
cls
echo STATUS: ON-MISSION
ping localhost -n 4 >null
echo LOCATION: Bhanshak-11 Ship, Pacific Ocean, State-15, Earth
ping localhost -n 4 >null
echo DESTINATION: San Francisco, California, State-15, Earth
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We're gonna land in 30 minutes.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo We have to be ready for whatever will shoot at us
echo from the ground until we land.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  o         o  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I    -------    I                    T
echo T              I===============I                    T
echo T              I===============I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I  -----------  I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I    =======    I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 4 >null
cls
echo Flying...
ping localhost -n 15 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo OVERLORD, THIS IS DELTA-1-NOVEMBER, WE HAVE A REBEL
echo ATTACK FROM THE AIR IN STATE-15, REQUESTING HEAVY
echo BACKUP.
ping localhost -n 9 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo OVERLORD: DELTA-1-NOVEMBER, THIS IS OVERLORD, SENDING
echo BACKUP.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo AHHH
ping localhost -n 2 >null
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo STAY TOGETHER, WE'RE HEADING TO THE PRESKISM NEXUS
echo TO KILL GENERAL REDFIELD.
ping localhost -n 8 >null
cls
echo Going...
ping localhost -n 7 >null
cls
set /a psn = 35
cls
:preskals7
if %psn% == 0 goto afterpreskals7
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals7
:afterpreskals7
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 5 >null
cls
set /a psn = 35
cls
:preskals8
if %psn% == 0 goto afterpreskals8
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals8
:afterpreskals8
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo OVERLORD, THIS IS HOTEL-3-ALPHA, WE HAVE AN EXTREME
echo REBEL ATTACK IN STATE-15, REQUESTING HEAVY BACKUP.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo OVERLORD: HOTEL-3-ALPHA, BACKUP HAS ALREADY BEEN SENT.
ping localhost -n 6 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I    =======    I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 9 >null
cls
set /a psn = 45
cls
:preskals9
if %psn% == 0 goto afterpreskals9
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals9
:afterpreskals9
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 10 >null
cls
set /a psn = 40
cls
:preskals10
if %psn% == 0 goto afterpreskals10
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals10
:afterpreskals10
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 15 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo THERE IS THE NEXUS. KEEP PUSHING.
ping localhost -n 5 >null
cls
echo Going...
ping localhost -n 7 >null
cls
set /a psn = 60
cls
:preskals11
if %psn% == 0 goto afterpreskals11
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals11
:afterpreskals11
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo LET'S GO INSIDE THE NEXUS.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   = ----- =   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I            I-I             T
echo T                      I------------I I             T
echo T                      I            I-I             T
echo T                      I             I              T
echo T                      I             I              T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo THIS IS GENERAL REDFIELD OF THE PRESKISM, LEAVE THE
echo PRESKISM NEXUS AND SURRENDER.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I  -----------  I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo NEVER.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 7 >null
cls
set /a psn = 55
cls
:preskals12
if %psn% == 0 goto afterpreskals12
cls
echo Preskal Soldier Number: %psn%
echo.
set /pause=Press any key to shoot...
set /a psn -= 1
goto preskals12
:afterpreskals12
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
echo Going...
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   = ----- =   I                    T
echo T              I   =========   I                    T
echo T          I   I---------------I   I                T
echo T          I           I           I                T
echo T          I           I           I                T
echo T          I-----------I-----------I                T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I surrender.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You shouldn't have served and led the Preskism.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo I'm afraid it's too late.
ping localhost -n 5 >null
cls
set "file=audio/gun.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I  -----  T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   = ----- =   I                    T
echo T              I   =========   I                    T
echo T          I   I---------------I   I                T
echo T          I           I           I                T
echo T          I           I           I                T
echo T          I-----------I-----------I                T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 2 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   = ----- =   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo It's done. The Preskism is over.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Preskos will have no choice but to come here on Earth
echo and lead this system again.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo And we all know he won't do that because he's lazy.
ping localhost -n 8 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 6 >null
cls
delete savegame/sl1.fg
delete savegame/sl2.fg
delete savegame/sl3.fg
delete savegame/sl4.fg
delete savegame/sl5.fg
delete savegame/sl6.fg
delete savegame/sl7.fg
delete savegame/sl8.fg
delete savegame/sl9.fg
delete savegame/sl10.fg
delete savegame/sl11.fg
echo 12 >savegame/save.fg
cls
echo ACHIEVEMENT1 >savegame/a1.fg
echo firsttime >savegame/wer.fg
cls
:credits
cls
ping localhost -n 5 >null
cls
set "file=audio/creditssong.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo ===TRACKAUSCH===
ping localhost -n 10 >null
echo.
echo Programming by FUTURESOFT
ping localhost -n 5 >null
echo.
echo Song by LUNATIC CALM (Leave You Far Behind)
ping localhost -n 5 >null
echo.
echo Sounds by
ping localhost -n 5 >null
echo PIXABAY
ping localhost -n 5 >null
echo u_grzzuhxz6g
ping localhost -n 5 >null
echo.
echo Tested by
ping localhost -n 5 >null
echo Carsyn Lee Peters
ping localhost -n 5 >null
echo.
echo Inspired by
ping localhost -n 5 >null
echo WOLFENSTEIN 2 THE NEW COLOSSUS
ping localhost -n 5 >null
echo HALF-LIFE 2
ping localhost -n 5 >null
echo.
echo Thanks for playing.
ping localhost -n 15 >null
cls
goto menu

:: MISSIONS

:startmothership
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying...
ping localhost -n 12 >null
cls
echo Landing...
ping localhost -n 4 >null
:mission1
cls
echo Select a weapon from your Bhanshak Loadout:
echo.
echo 1.Assault Rifle
echo 2.Shotgun
set /p input=
if %input%==1 set /a gun = 1
if %input%==2 set /a gun = 2
cls
echo Weapon selected.
ping localhost -n 3 >null
cls
echo Going...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo INTRUDER ON MOTHERSHIP, REQUESTING BACKUP.
ping localhost -n 5 >null
:aaa
if %gun%==1 goto arshoot1
if %gun%==2 goto shotgunshoot1
:shotgunshoot1
cls
set /pause=Press any key to shoot soldier...
cls
echo The Elite Preskal Soldier is dead.
cls
goto m1p2
:arshoot1
cls
set /pause=Press any key to shoot soldier...
cls
set /pause=Press any key to shoot soldier...
cls
set /pause=Press any key to shoot soldier...
cls
set /pause=Press any key to shoot soldier...
cls
echo The Elite Preskal Soldier is dead.
ping localhost -n 4 >null
cls
goto m1p2
:m1p2
cls
echo Going...
ping localhost -n 5 >null
cls
echo You have encountered 3 Elite Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto arshoot2
if %gun%==2 goto shotgunshoot2
:shotgunshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m1p3
:arshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:m1p3
cls
echo Going...
ping localhost -n 7 >null
cls
echo Picking up a radio...
ping localhost -n 4 >null
cls
echo Changing frequency...
ping localhost -n 5 >null
cls
echo YOU: Hello?
ping localhost -n 3 >null
echo RESISTANCE: Hello, who's this?
ping localhost -n 3 >null
echo YOU: It's Wallace, which one of the documents is needed?
ping localhost -n 4 >null
:hellgen
set /a num=%random% %%4 +1
if %num%==1 goto ubergalatis
if %num%==2 goto weltschmerz
if %num%==3 goto riesiger
if %num%==4 goto berufssoldat
:ubergalatis
cls
echo YOU: Hello?
echo RESISTANCE: Hello, who's this?
echo YOU: It's Wallace, which one of the documents is needed?
echo RESISTANCE: You need to get the Ubergalatis Spaceship document.
ping localhost -n 5 >null
echo RESISTANCE: It's a new spaceship they plan on building and we must not let them build it.
ping localhost -n 7 >null
goto m1p4
:weltschmerz
cls
echo YOU: Hello?
echo RESISTANCE: Hello, who's this?
echo YOU: It's Wallace, which one of the documents is needed?
echo RESISTANCE: You need to get the Weltschmerz Robot Mechanics document.
ping localhost -n 5 >null
echo RESISTANCE: It's an anti-rebel robot that will be built and we must get rid of the document before they build it.
ping localhost -n 7 >null
goto m1p4
:riesiger
cls
echo YOU: Hello?
echo RESISTANCE: Hello, who's this?
echo YOU: It's Wallace, which one of the documents is needed?
echo RESISTANCE: You need to get the Riesiger Robot Concept document.
ping localhost -n 5 >null
echo RESISTANCE: It's probably the biggest and most powerful anti-rebel robot they could build.
ping localhost -n 7 >null
echo RESISTANCE: We shall not let them build it.
ping localhost -n 5 >null
goto m1p4
:berufssoldat
cls
echo YOU: Hello?
echo RESISTANCE: Hello, who's this?
echo YOU: It's Wallace, which one of the documents is needed?
echo RESISTANCE: You need to get the Berufssoldat Armor document.
ping localhost -n 5 >null
echo RESISTANCE: They plan on implementing a new type of soldier called Berufssoldat.
ping localhost -n 7 >null
echo RESISTANCE: They plan to put them in the Mothership with a very powerful armor.
ping localhost -n 7 >null
echo RESISTANCE: We shall not let them build armor for them.
ping localhost -n 6 >null
goto m1p4
:m1p4
echo YOU: Alright, I'll get it.
ping localhost -n 5 >null
echo RESISTANCE: Remember, Sector-4.
ping localhost -n 4 >null
echo YOU: Yeah, I know.
ping localhost -n 4 >null
:m1p5
cls
echo Going...
ping localhost -n 6 >null
cls
echo You have encountered 2 Elite Preskal Guards.
if %gun%==1 goto arshoot3
if %gun%==2 goto shotgunshoot3
:shotgunshoot3
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m1p6
:arshoot3
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:m1p6
cls
echo Going...
ping localhost -n 6 >null
cls
echo You have reached Sector 4.
ping localhost -n 4 >null
cls
echo Looking for document...
ping localhost -n 9 >null
cls
echo 3 Elite Preskal Soldiers came into the room.
ping localhost -n 4 >null
cls
if %gun%==1 goto arshoot4
if %gun%==2 goto shotgunshoot4
:shotgunshoot4
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto warren
:arshoot4
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Elite Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:warren
echo Looking for document...
ping localhost -n 8 >null
cls
echo You have found the document.
ping localhost -n 5 >null
cls
echo Running back to the Bhanshak...
ping localhost -n 7 >null
cls
echo Flying...
ping localhost -n 12 >null
cls
echo Landing...
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T      I----I          I          I-------I         T
echo T      I // I          I          I       I         T
echo T      I // I----------I----------I  I----I         T
echo T      I // I          I          I  I              T
echo T      I----I          I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Here's the document.
ping localhost -n 4 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I   ---------   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Thank you, Wallace. You are making a big difference.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I   ---------   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo You can always do another mission on the Mothership
echo to retrieve other documents.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I   ---------   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo There's actually a few remaining clones of the document
echo you retrieved now.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I   ---------   I                    T
echo T              I   =========   I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Thank you, Wallace.
ping localhost -n 4 >null
cls
echo mission1 >savegame\m1.fg
cls
echo Mission completed.
ping localhost -n 5 >null
cls
goto menu

:startstate88
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying...
ping localhost -n 6 >null
cls
echo Landing...
ping localhost -n 4 >null
:mission2
cls
echo Select a weapon from your Bhanshak Loadout:
echo.
echo 1.Assault Rifle
echo 2.Shotgun
set /p input=
if %input%==1 set /a gun = 1
if %input%==2 set /a gun = 2
cls
echo Weapon selected.
ping localhost -n 3 >null
cls
echo Going...
ping localhost -n 6 >null
cls
echo Getting radio...
ping localhost -n 4 >null
cls
echo YOU: Wallace, reporting for State-88 mission. Requesting task.
ping localhost -n 7 >null
echo RESISTANCE: Hello, Wallace.
ping localhost -n 4 >null
:hellgen2
set /a num=%random% %%4 +1
if %num%==1 goto hotelkilo
if %num%==2 goto charlieoscar
if %num%==3 goto sierraromeo
if %num%==4 goto foxtrotecho
:hotelkilo
cls
echo YOU: Wallace, reporting for State-88 mission. Requesting task.
echo RESISTANCE: Hello, Wallace.
echo RESISTANCE: Your tasked with stopping the Bhanshak deployment of squad Hotel-1-Kilo.
ping localhost -n 6 >null
goto m2p2
:charlieoscar
cls
echo YOU: Wallace, reporting for State-88 mission. Requesting task.
echo RESISTANCE: Hello, Wallace.
echo RESISTANCE: Your tasked with stopping the Bhanshak deployment of squad Charlie-6-Oscar.
ping localhost -n 6 >null
goto m2p2
:sierraromeo
cls
echo YOU: Wallace, reporting for State-88 mission. Requesting task.
echo RESISTANCE: Hello, Wallace.
echo RESISTANCE: Your tasked with stopping the Bhanshak deployment of squad Sierra-8-Romeo.
ping localhost -n 6 >null
goto m2p2
:foxtrotecho
cls
echo YOU: Wallace, reporting for State-88 mission. Requesting task.
echo RESISTANCE: Hello, Wallace.
echo RESISTANCE: Your tasked with stopping the Bhanshak deployment of squad Foxtrot-2-Echo.
ping localhost -n 6 >null
goto m2p2
:m2p2
echo YOU: Copy. Not an Attack-Bhanshak though, right?
ping localhost -n 6 >null
echo RESISTANCE: Unfortunately, that cannot be decyphered or deduced.
ping localhost -n 6 >null
echo RESISTANCE: Pray for it to be regular Bhanshak.
ping localhost -n 5 >null
echo YOU: Copy. Wallace out.
ping localhost -n 5 >null
:m2p3
cls
echo Going...
ping localhost -n 6 >null
cls
echo You found an abandoned hideout.
ping localhost -n 5 >null
cls
echo Entering hideout...
ping localhost -n 4 >null
cls
echo Using binoculars...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T               ===============                     T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo SQUAD, DEPLOY, CODE 6. ELIMINATE ALL CITIZENS WITHIN
echo THE BRIEF PERIMETER. TAKE BACK STATE-88.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo COPY THAT, COMMANDER.
ping localhost -n 4 >null
cls
echo Leaving hideout...
ping localhost -n 5 >null
cls
echo You have located the target squad in the middle of the street.
ping localhost -n 5 >null
:loud
cls
echo Going...
ping localhost -n 13 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo COMMANDER, THE ULTRA-THREAT IS HERE.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T               ===============                     T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo OVERLORD-ASIA, THIS IS FOXTROT THE ULTRA-THREAT HAS BEEN LOCATED. 
echo SEND BACKUP NOW.
ping localhost -n 8 >null
if %gun%==1 goto newarshoot1
if %gun%==2 goto newsgshoot1
:newsgshoot1
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m2p5
:newarshoot1
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:m2p5
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T               ===============                     T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo RADIO: COMMANDER, THIS IS OVERLORD-ASIA. BACKUP
echo REQUEST GRANTED, SENDING SOLDIERS TO YOUR LOCATION.
ping localhost -n 11 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 5 >null
cls
if %gun%==1 goto newarshoot2
if %gun%==2 goto newsgshoot2
:newsgshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m2pn
:newarshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:m2pn
cls
echo Getting radio...
ping localhost -n 4 >null
cls
echo YOU: The squad is down.
ping localhost -n 4 >null
echo RESISTANCE: Understood. You can come back to the base.
ping localhost -n 4 >null
echo YOU: Copy.
ping localhost -n 3 >null
cls
echo mission2 >savegame\m2.fg
cls

:startfurugelm
cls
echo Getting radio...
ping localhost -n 4 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo RESISTANCE: Hello, Wallace.
ping localhost -n 4 >null
echo YOU: I need a task in the Furugelm Island.
ping localhost -n 5 >null
echo RESISTANCE: You must destroy what they've built. You must not let them finish the structure.
ping localhost -n 8 >null
echo YOU: Don't they have artillery to defend the island from the large state?
ping localhost -n 7 >null
echo RESISTANCE: A rebel hideout in Brandoth Town has a secret Eraasman-2 Submarine.
ping localhost -n 7 >null
echo RESISTANCE: You can use it to sneak on the island.
ping localhost -n 6 >null
echo YOU: Copy that. Wallace out.
ping localhost -n 5 >null
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying to Brandoth Town...
ping localhost -n 7 >null
cls
echo Landing...
ping localhost -n 4 >null
:mission3
cls
echo Select a weapon from your Bhanshak Loadout:
echo.
echo 1.Assault Rifle
echo 2.Shotgun
set /p input=
if %input%==1 set /a gun = 1
if %input%==2 set /a gun = 2
cls
echo Weapon selected.
ping localhost -n 3 >null
cls
echo Going to hideout...
ping localhost -n 7 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto warshoot
if %gun%==2 goto bnshoot
:bnshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m3p1
:warshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:m3p1
cls
echo Going...
ping localhost -n 5 >null
cls
echo You have reached the location of the submarine.
ping localhost -n 6 >null
cls
echo Boarding submarine...
ping localhost -n 5 >null
cls
echo Driving submarine...
ping localhost -n 20 >null
cls
echo Target location reached.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T               ===============                     T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo SQUAD, CONTINUE ON ARTILLERY, CODE 17A.
ping localhost -n 7 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  0         0  I                    T
echo T              I               I                    T
echo T              I     [---]     I                    T
echo T              I     [---]     I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo ROGER THAT, COMMANDER.
ping localhost -n 5 >null
cls
echo Going on land...
ping localhost -n 5 >null
cls
if %gun%==1 goto warshoot2
if %gun%==2 goto bnshoot2
:bnshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto m3p2
:warshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:m3p2
cls
echo Going...
ping localhost -n 6 >null
cls
echo Entering artillery...
ping localhost -n 6 >null
cls
echo Incoming horde of Preskal Soldiers.
ping localhost -n 4 >null
cls
set /pause=Press any key to blow up soldiers...
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
ping localhost -n 4 >null
cls
set /pause=Press any key to blow up soldiers...
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
ping localhost -n 4 >null
cls
set /pause=Press any key to blow up soldiers...
cls
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
ping localhost -n 4 >null
cls
echo The Preskal Soldiers are dead.
ping localhost -n 5 >null
cls
echo Leaving artillery...
ping localhost -n 4 >null
cls
set /pause=Press any key to plant dynamite on the island...
cls
echo Planting dynamite...
ping localhost -n 15 >null
cls
echo Dynamite planted.
ping localhost -n 5 >null
cls
echo Going back to submarine...
ping localhost -n 6 >Null
cls
echo Driving submarine...
ping localhost -n 8 >null
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo Driving submarine...
ping localhost -n 3 >null
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo Driving submarine...
ping localhost -n 3 >null
set "file=audio/distantexplosion.mp3"
( echo Set Sound = CreateObject("WMPlayer.OCX.7"^)
  echo Sound.URL = "%file%"
  echo Sound.Controls.play
  echo do while Sound.currentmedia.duration = 0
  echo wscript.sleep 100
  echo loop
  echo wscript.sleep (int(Sound.currentmedia.duration^)+1^)*1000) >sound.vbs
start /min sound.vbs
cls
echo Driving submarine...
ping localhost -n 10 >null
cls
echo Location reached.
ping localhost -n 4 >null
cls
echo Getting radio...
ping localhost -n 5 >null
cls
echo YOU: I destroyed whatever they were building there.
ping localhost -n 5 >null
echo UNKNOWN: Alright, thank you.
ping localhost -n 4 >null
echo UNKNOWN: They might send more of them to continue whatever they were trying to build.
ping localhost -n 8 >null
echo UNKNOWN: Meaning you can do a mission like this whenever you want.
ping localhost -n 6 >null
echo YOU: Copy. Death to the Preskism.
ping localhost -n 5 >null
echo UNKNOWN: Death to the Preskism.
ping localhost -n 6 >null
cls
echo mission3 >savegame\m3.fg
cls
echo Mission completed.
ping localhost -n 5 >null
cls
goto menu

:starthuzakhev
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying to Huzakhev prison...
ping localhost -n 8 >null
cls
echo Landing...
ping localhost -n 4 >null
:mission4
cls
echo Select a weapon from your Bhanshak Loadout:
echo.
echo 1.Assault Rifle
echo 2.Shotgun
set /p input=
if %input%==1 set /a gun = 1
if %input%==2 set /a gun = 2
cls
echo Weapon selected.
ping localhost -n 3 >null
cls
echo Getting radio...
ping localhost -n 4 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo RESISTANCE: Greetings, Wallace.
ping localhost -n 4 >null
echo YOU: Requesting task for Huzakhev prison.
ping localhost -n 5 >null
echo RESISTANCE: Copy that.
ping localhost -n 3 >null
echo RESISTANCE: Squad Beta-8-Mike is coming to the prison and you must defend the prison.
ping localhost -n 7 >null
echo YOU: Copy that, Wallace out.
ping localhost -n 5 >null
cls
echo Entering prison...
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Rebels, a Preskal squad is coming to this hideout.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I    -------    I                    T
echo T              I      ===      I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Oh no... That's just awesome...
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I    -------    I                    T
echo T              I      ===      I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo REBELS, INCOMING PRESKAL SQUAD TO OUR LOCATION.
ping localhost -n 6 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Equipment and members of squad are unknown.
ping localhost -n 6 >null
cls
echo Waiting for squad...
ping localhost -n 9 >null
cls
echo The Preskal Soldiers have come.
ping localhost -n 4 >null
cls
if %gun%==1 goto garshoot
if %gun%==2 goto mvshoot
:mvshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
goto siuuu
:garshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:siuuu
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo The squad is down.
ping localhost -n 4 >null
cls
echo Getting radio...
ping localhost -n 5 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo RESISTANCE: Hello, Wallace.
ping localhost -n 4 >null
echo RESISTANCE: Another squad is coming to the prison.
ping localhost -n 6 >null
echo YOU: Copy that, keep me informed.
ping localhost -n 5 >null
echo RESISTANCE: Copy that, Resistance out.
ping localhost -n 7 >Null
cls
echo Waiting for squad...
ping localhost -n 9 >null
cls
echo The Preskal Soldiers have come.
ping localhost -n 4 >null
cls
if %gun%==1 goto garshoot1
if %gun%==2 goto nigshoot1
:nigshoot1
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
goto qwerty
:garshoot1
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:qwerty
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Squad is down.
ping localhost -n 4 >null
cls
echo Getting radio...
ping localhost -n 5 >null
cls
echo YOU: Hello?
ping localhost -n 4 >null
echo RESISTANCE: Hello, Wallace.
ping localhost -n 4 >null
echo RESISTANCE: One last Preskal squad is coming to the prison.
ping localhost -n 7 >null
echo YOU: Copy that, Wallace out.
ping localhost -n 6 >null
cls
echo Waiting for squad...
ping localhost -n 9 >null
cls
echo The Preskal Soldiers have come.
ping localhost -n 4 >null
cls
if %gun%==1 goto garshoot2
if %gun%==2 goto fuckandshoot
:fuckandshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
goto ghayo
:garshoot2
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:ghayo
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I    -------    I                    T
echo T              I      ===      I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Thank you for helping, Wallace.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I---------------I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I               I                    T
echo T              I   ---------   I                    T
echo T              I               I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo No problem. Death to the Preskism.
ping localhost -n 5 >null
cls
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T                                                   T
echo T              I===============I                    T
echo T              I               I                    T
echo T              I  O         O  I                    T
echo T              I               I                    T
echo T              I  X         X  I                    T
echo T              I    -------    I                    T
echo T              I      ===      I                    T
echo T              I---------------I                    T
echo T                      I          I-------I         T
echo T                      I          I       I         T
echo T                      I----------I  I----I         T
echo T                      I          I  I              T
echo T                      I          I--I              T
echo T                      I                            T
echo TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT
echo Death to the Preskism.
ping localhost -n 5 >null
cls
echo Getting radio...
ping localhost -n 5 >null
cls
echo YOU: Hello?
ping localhost -n 3 >null
echo RESISTANCE: Hello, Wallace. All good?
ping localhost -n 4 >null
echo YOU: Affirmative. Heading back to base now.
ping localhost -n 5 >null
echo RESISTANCE: Copy that.
ping localhost -n 4 >null
cls
echo Leaving prison...
ping localhost -n 6 >null
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying to base...
ping localhost -n 8 >null
cls
echo Landing...
ping localhost -n 4 >null
cls
echo mission4 >savegame\m4.fg
cls
echo Mission completed.
ping localhost -n 5 >null
cls
goto menu

:startstate15
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying to the Preskism Nexus...
ping localhost -n 23 >null
cls
echo Landing...
ping localhost -n 4 >null
:mission5
cls
echo Select a weapon from your Bhanshak Loadout:
echo.
echo 1.Assault Rifle
echo 2.Shotgun
set /p input=
if %input%==1 set %gun%==1
if %input%==2 set "gun=shotgun"
cls
echo Weapon selected.
ping localhost -n 3 >null
cls
echo Going to the Preskism Nexus...
ping localhost -n 8 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto qarshoot
if %gun%==2 goto dawgs
:dawgs
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto gagwa
:qarshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:gagwa
cls
echo You have entered the Preskism Nexus.
ping localhost -n 4 >null
cls
echo Roaming...
ping localhost -n 6 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto zarshoot
if %gun%==2 goto zawg
:zawg
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto cxa
:zarshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:cxa
cls
echo Roaming...
ping localhost -n 9 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto barshoot
if %gun%==2 goto whatupbitch
:whatupbitch
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto jizz
:barshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
:jizz
cls
echo Roaming...
ping localhost -n 7 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto 5arshoot
if %gun%==2 goto nuhuh
:nuhuh
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto tewax
:5arshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:tewax
cls
echo Roaming...
ping localhost -n 12 >null
cls
echo The Preskism Nexus is clear.
ping localhost -n 4 >null
cls
echo Leaving...
ping localhost -n 8 >null
cls
echo You have encountered Preskal Soldiers.
ping localhost -n 4 >null
cls
if %gun%==1 goto sarshoot
if %gun%==2 goto bloodybastard
:bloodybastard
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
goto bagg
:sarshoot
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
set /pause=Press any key to shoot soldiers...
cls
echo The Preskal Soldiers are dead.
ping localhost -n 4 >null
cls
:bagg
cls
echo Going to Bhanshak...
ping localhost -n 8 >null
cls
echo Boarding Bhanshak...
ping localhost -n 4 >null
cls
echo Flying to the base...
ping localhost -n 23 >null
cls
echo Landing...
ping localhost -n 4 >null
cls
echo mission5 >savegame\m5.fg
cls
echo Mission completed.
ping localhost -n 5 >null
cls
goto menu













