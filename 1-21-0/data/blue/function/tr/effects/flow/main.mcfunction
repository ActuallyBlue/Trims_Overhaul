execute if score #.20 blue.misc matches 15 anchored eyes run function blue:tr/effects/flow/air_flow
execute store success score #.flow.ambient blue.misc unless score #.flow.ambient blue.misc matches 1
execute store success score #.temp blue.misc if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}}
execute unless score #.flow.gravity blue.misc = #.temp blue.misc run function blue:tr/effects/flow/gravity
execute if score #.flow.ambient blue.misc matches 0 run particle dust_color_transition{from_color:[0.6f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.1 ~ 0.15 0.05 0.15 0 2 normal @a[scores={blue.particles=1..}]
execute unless entity @s[tag=blue.tr.mats.wind] run return fail
execute if score #.flow.ambient blue.misc matches 1 run particle dust_color_transition{from_color:[0.6f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.1 ~ 0.15 0.05 0.15 0 2 normal @a[scores={blue.particles=2..}]
execute if score #.flow.ambient blue.misc matches 0 if predicate blue:tr/aerial run particle dust_color_transition{from_color:[0.7f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.9 ~ 0.15 0.25 0.15 0 2 normal @a[distance=0.01..,scores={blue.particles=1..}]
execute if score #.flow.ambient blue.misc matches 1 if predicate blue:tr/aerial run particle dust_color_transition{from_color:[0.7f,0.8f,1f],to_color:[1,1,1],scale:0.8f} ~ ~0.9 ~ 0.15 0.25 0.15 0 2 normal @a[distance=0.01..,scores={blue.particles=2..}]
execute positioned ~ ~0.75 ~ as @e[type=#blue:tr/projectiles,distance=..3,tag=!blue.tr.checked,tag=!smithed.strict,predicate=blue:tr/moving] at @s run function blue:tr/effects/flow/emp/projectile
execute as b163102f-0-4-0-1 at @s run function blue:tr/effects/flow/emp/trail
execute if entity @s[advancements={blue:tr/tags={tutorial_barrage=false}}] if items entity @e[type=item,tag=!blue.tr.checked,distance=..3] contents wind_charge[count=1] run function blue:tr/effects/flow/emp/barrage/tutorial
execute as @e[type=item,tag=!blue.tr.checked,predicate=blue:tr/barrage,distance=..6] if function blue:tr/effects/flow/emp/own run function blue:tr/effects/flow/emp/barrage/dropped
execute if score #.barrage_time blue.misc matches 1.. run return run function blue:tr/effects/flow/emp/barrage/loop
attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.temp blue.misc matches 0 if entity @s[x_rotation=-90..-12,predicate=!blue:shared/is_sneaking] run return run attribute @s generic.gravity modifier add blue:tr.trim -0.05 add_value
execute if score #.temp blue.misc matches 1 if entity @s[x_rotation=-90..-12,predicate=!blue:shared/is_sneaking] run return run attribute @s generic.gravity modifier add blue:tr.trim -0.06 add_value
execute if entity @s[x_rotation=40..90,predicate=blue:shared/is_sneaking] run return run attribute @s generic.gravity modifier add blue:tr.trim 0.04 add_value
execute if score #.temp blue.misc matches 1 run return run attribute @s generic.gravity modifier add blue:tr.trim -0.04 add_value
attribute @s generic.gravity modifier add blue:tr.trim -0.03 add_value