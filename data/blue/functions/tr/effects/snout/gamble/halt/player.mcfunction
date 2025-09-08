scoreboard players operation #.temp blue.misc = @s blue.tr.combat
execute if score #.temp blue.tr.combat matches -1.. run return 0
effect give @s slow_falling 1 0 true
effect give @s resistance 1 0 true
effect give @s weakness 1 10 true
tp @s @s
tp @s[distance=0.1..] ~ ~ ~