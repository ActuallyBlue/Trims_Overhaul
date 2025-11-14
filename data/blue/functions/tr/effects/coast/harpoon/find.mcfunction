tag @s add blue.tr.coast_checked
execute on origin if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc -5912
execute unless score #.temp blue.misc matches -5912 run return 0
scoreboard players reset #.temp blue.misc
execute at @s positioned ~-2 ~-2 ~-2 run tag @e[type=!#blue:shared/no_effects,tag=!blue.tr.coast,dx=3,dy=3,dz=3] add blue.tr.coast_radius
execute at @s as @e[tag=blue.tr.coast_radius,sort=nearest,distance=..8,limit=1] run function blue:tr/effects/coast/harpoon/entity
execute at @s run tag @e[tag=blue.tr.coast_radius,distance=..8] remove blue.tr.coast_radius