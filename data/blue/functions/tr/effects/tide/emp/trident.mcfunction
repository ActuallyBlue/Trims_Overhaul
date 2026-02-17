execute unless entity @s[tag=blue.tr.tide_owned] run function blue:tr/effects/tide/emp/own
execute unless entity @s[tag=blue.tr.tide_owned] run return 0
execute if score #.sneaking blue.misc matches 2 run function blue:tr/effects/tide/emp/stop
execute unless score #.tide.stacks blue.misc matches 1.. run return 0
execute if score #.tide.weak_cooldown blue.misc matches 1 run return 0
execute on origin if predicate blue:tr/hold_trident run return 0
particle splash ~ ~ ~ 0.1 0.1 0.1 0.1 4 force
execute if entity @s[tag=!blue.tr.made_particle,nbt={inGround:1b,DealtDamage:0b}] run function blue:tr/effects/tide/emp/particle
execute if data entity @s {DealtDamage:0b} run return 0
execute if predicate blue:shared/in_water positioned ~ ~-0.7 ~ run function blue:tr/effects/tide/emp/water_burst
execute unless score #.tide.cancel blue.misc matches 1 positioned ~ ~-0.7 ~ run function blue:tr/effects/tide/emp/land_burst
scoreboard players reset #.tide.cancel blue.misc
execute on origin run function blue:tr/effects/tide/emp/display
tag @s add blue.tr.tide_checked