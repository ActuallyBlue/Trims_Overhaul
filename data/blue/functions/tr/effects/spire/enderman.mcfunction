execute on target if entity @s[tag=blue.tr.spire] run scoreboard players set #.enderman blue.misc 1
execute if score #.enderman blue.misc matches 1 run effect give @s weakness 1 10 true
scoreboard players reset #.enderman blue.misc