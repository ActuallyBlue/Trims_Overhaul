execute if score #.20 blue.misc matches 15 anchored eyes run function blue:tr/effects/flow/delay
execute store success score #.flow.ambient blue.misc unless score #.flow.ambient blue.misc matches 1
execute if score #.flow.ambient blue.misc matches 0 run particle dust_color_transition{from_color:[0.6f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.1 ~ 0.15 0.05 0.15 0 2 normal @a[scores={blue.particles=1..}]
execute unless entity @s[tag=blue.tr.mats.wind] run return fail
execute if score #.flow.ambient blue.misc matches 1 run particle dust_color_transition{from_color:[0.6f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.1 ~ 0.15 0.05 0.15 0 2 normal @a[scores={blue.particles=2..}]
execute if score #.flow.ambient blue.misc matches 0 if predicate blue:tr/aerial run particle dust_color_transition{from_color:[0.7f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.9 ~ 0.15 0.25 0.15 0 2 normal @a[distance=0.01..,scores={blue.particles=1..}]
execute if score #.flow.ambient blue.misc matches 1 if predicate blue:tr/aerial run particle dust_color_transition{from_color:[0.7f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.9 ~ 0.15 0.25 0.15 0 2 normal @a[distance=0.01..,scores={blue.particles=2..}]
execute positioned ~ ~0.75 ~ as @e[type=#blue:shared/projectiles,distance=..3,tag=!blue.tr.checked,tag=!smithed.strict,predicate=blue:tr/moving] at @s run function blue:tr/effects/flow/emp/projectile
execute at b163102f-0-4-0-1 run particle small_gust ~ ~ ~ 0.1 0.1 0.1 0 2 force
execute if entity @s[advancements={blue:tr/tags={tutorial_barrage=false}}] if items entity @e[type=item,tag=!blue.tr.checked,distance=..3] contents wind_charge[count=1] run function blue:tr/effects/flow/emp/barrage/tutorial
execute as @e[type=item,tag=!blue.tr.checked,predicate=blue:tr/barrage,distance=..6] if function blue:tr/effects/flow/emp/own run function blue:tr/effects/flow/emp/barrage/dropped
execute if score #.barrage_time blue.misc matches 1.. run return run function blue:tr/effects/flow/emp/barrage/loop
attribute @s gravity modifier remove blue:tr.trim
execute if score #.flow.chamber blue.misc matches 0 if entity @s[x_rotation=-90..-12,predicate=!blue:shared/is_sneaking] run return run attribute @s gravity modifier add blue:tr.trim -0.05 add_value
execute if score #.flow.chamber blue.misc matches 1 if entity @s[x_rotation=-90..-12,predicate=!blue:shared/is_sneaking] run return run attribute @s gravity modifier add blue:tr.trim -0.06 add_value
execute if entity @s[x_rotation=40..90,predicate=blue:shared/is_sneaking] run return run attribute @s gravity modifier add blue:tr.trim 0.04 add_value
execute if score #.flow.chamber blue.misc matches 1 run return run attribute @s gravity modifier add blue:tr.trim -0.04 add_value
attribute @s gravity modifier add blue:tr.trim -0.03 add_value