execute on origin if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc -5912
execute unless score #.temp blue.misc matches -5912 run return 0
scoreboard players reset #.temp blue.misc
tag @s add blue.tr.coast_checked
execute at @s positioned ~-2.5 ~-2.5 ~-2.5 as @e[type=!#blue:tr/no_effects,tag=!blue.tr.coast,dx=4,dy=4,dz=4,sort=nearest,limit=1] run function blue:tr/effects/coast/harpoon/entity