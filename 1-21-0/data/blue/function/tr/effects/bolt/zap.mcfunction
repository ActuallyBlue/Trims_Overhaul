effect give @s nausea 4 0 true
particle electric_spark ~ ~1 ~ 0.1 0.5 0.1 0.5 4
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.2 2
execute store result score #.temp blue.misc run random value 1..4
execute if score #.temp blue.misc matches 1 run return run tp @s ~ ~ ~ ~30 ~
execute if score #.temp blue.misc matches 2 run return run tp @s ~ ~ ~ ~60 ~
execute if score #.temp blue.misc matches 3 run return run tp @s ~ ~ ~ ~-30 ~
execute if score #.temp blue.misc matches 4 run tp @s ~ ~ ~ ~-60 ~