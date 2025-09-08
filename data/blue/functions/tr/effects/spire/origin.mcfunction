execute if score #.20 blue.misc matches 15 run effect give @s jump_boost 2 2 true
execute as @e[type=enderman,distance=..5] run function blue:tr/effects/spire/enderman
scoreboard players set #.temp blue.misc 1
stopsound @s hostile entity.enderman.stare