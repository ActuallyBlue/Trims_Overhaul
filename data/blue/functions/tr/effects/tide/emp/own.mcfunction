execute unless score #.tide.weak_cooldown blue.misc matches 1 if data entity @s {life:0s} on origin if score @s blue.tr.current_trim matches 12 run scoreboard players set #.temp blue.misc -412
execute unless score #.temp blue.misc matches -412 run tag @s add blue.tr.tide.checked
execute unless score #.temp blue.misc matches -412 run return 0
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.tide.owned