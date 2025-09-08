execute on origin if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc -5912
execute unless score #.temp blue.misc matches -5912 run return fail
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.coast_checked
execute at @s positioned ~-2.5 ~-2.5 ~-2.5 as @n[type=!#blue:tr/no_effects,tag=!blue.tr.coast,dx=4,dy=4,dz=4] run function blue:tr/effects/coast/harpoon/entity