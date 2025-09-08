execute on origin if score @s blue.tr.current_trim matches 7 run scoreboard players set #.temp blue.misc -81234
execute unless score #.temp blue.misc matches -81234 run return 0
scoreboard players set #.sentry.shoot blue.misc 1
kill