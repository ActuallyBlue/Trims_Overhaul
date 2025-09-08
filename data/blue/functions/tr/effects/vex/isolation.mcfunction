particle dust 0.81 0.78 0.65 1 ~ ~0.8 ~ 0.2 0.3 0.2 0 1
execute if score #.isolated blue.misc matches 1 run return 0
playsound entity.allay.ambient_with_item player @a ~ ~ ~ 1 2
scoreboard players set #.isolated blue.misc 1
particle dust 0.81 0.78 0.65 1 ~ ~1 ~ 0.1 0.1 0.1 0.1 24
effect give @s strength 3 1 true
effect give @s speed 2 1 true