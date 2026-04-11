tag @s add blue.tr.coast.checked
execute on origin if score @s blue.tr.current_trim matches 1 run scoreboard players set #.temp blue.misc -5912
execute unless score #.temp blue.misc matches -5912 run return 0
execute store success score #.temp blue.misc if entity @s[tag=blue.tr.coast.propelled]
execute at @s positioned ~-2 ~-2 ~-2 run tag @e[type=!#blue:shared/no_ai,tag=!blue.tr.coast,dx=3,dy=3,dz=3] add blue.tr.coast.radius
execute at @s as @e[tag=blue.tr.coast.radius,sort=nearest,distance=..8,limit=1] run function blue:tr/effects/coast/harpoon/entity
execute at @s run tag @e[tag=blue.tr.coast.radius,distance=..8] remove blue.tr.coast.radius