execute unless score #.tide.weak_cooldown blue.misc matches 1 if data entity @s {life:0s} on origin if entity @s[tag=blue.tr.tide] run scoreboard players set #.temp blue.misc -412
execute unless score #.temp blue.misc matches -412 run return run tag @s add blue.tr.tide_checked
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.tide_owned