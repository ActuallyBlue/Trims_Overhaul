execute unless entity @s[tag=blue.tr.tide.owned] run return run function blue:tr/effects/tide/emp/own
execute if score #.sneaking blue.misc matches 2 run function blue:tr/effects/tide/emp/stop
execute unless score #.tide.stacks blue.misc matches 1.. run return fail
execute if score #.tide.weak_cooldown blue.misc matches 1 run return fail
execute on origin if items entity @s weapon trident run return fail
particle splash ~ ~ ~ 0.1 0.1 0.1 0.1 4 force
execute if entity @s[tag=!blue.tr.made_particle,nbt={inGround:1b,DealtDamage:0b}] run function blue:tr/effects/tide/emp/particle
execute if data entity @s {DealtDamage:0b} run return fail
tag @s add blue.tr.tide.checked
execute if dimension the_nether if predicate blue:r/20c run return run function blue:tr/effects/tide/emp/fizzle
execute if block ~ ~ ~ water positioned ~ ~-0.7 ~ run function blue:tr/effects/tide/emp/water_burst
execute unless score #.tide.cancel blue.misc matches 1 positioned ~ ~-0.7 ~ run function blue:tr/effects/tide/emp/land_burst
scoreboard players reset #.tide.cancel blue.misc
execute on origin run function blue:tr/effects/tide/emp/display