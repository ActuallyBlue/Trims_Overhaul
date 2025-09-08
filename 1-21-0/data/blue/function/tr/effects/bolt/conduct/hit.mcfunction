execute if entity @s[tag=blue.tr.bolt] run return run function blue:tr/effects/bolt/conduct/user
tag @s add blue.tr.hit
effect give @s nausea 4 0 true
damage @s 0.05 lightning_bolt
particle electric_spark ~ ~1 ~ 0.1 0.5 0.1 0.5 12
execute if score #.temp blue.misc matches 1 run return run tp @s ~ ~ ~ ~60 ~
execute if score #.temp blue.misc matches 2 run return run tp @s ~ ~ ~ ~120 ~
execute if score #.temp blue.misc matches 3 run return run tp @s ~ ~ ~ ~180 ~
execute if score #.temp blue.misc matches 4 run tp @s ~ ~ ~ ~240 ~