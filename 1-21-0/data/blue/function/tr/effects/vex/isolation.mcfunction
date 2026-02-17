particle white_smoke ~ ~0.8 ~ 0.2 0.3 0.2 0 1
execute if score #.vex.isolated blue.misc matches 1 run return fail
execute unless predicate blue:shared/is_sneaking run playsound entity.allay.ambient_with_item player @a ~ ~ ~ 0.7 2
scoreboard players set #.vex.isolated blue.misc 1
particle white_smoke ~ ~0.75 ~ 0.2 0.3 0.2 0.06 16
effect give @s strength 2 1 true
effect give @s speed 2 1 true