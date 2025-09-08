execute positioned ^ ^0.3 ^9.5 positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^ ^0.3 ^-9.5 positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^9.5 ^0.3 ^ positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^-9.5 ^0.3 ^ positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute rotated ~45 ~ positioned ^ ^0.3 ^9.5 positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^ ^0.3 ^-9.5 positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^9.5 ^0.3 ^ positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^-9.5 ^0.3 ^ positioned over motion_blocking_no_leaves if entity @s[distance=..10.5] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute positioned ^ ^0.3 ^9.5 positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^ ^0.3 ^9.5 0 0.1 0 0 1 force
execute positioned ^ ^0.3 ^-9.5 positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^ ^0.3 ^-9.5 0 0.1 0 0 1 force
execute positioned ^9.5 ^0.3 ^ positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^9.5 ^0.3 ^ 0 0.1 0 0 1 force
execute positioned ^-9.5 ^0.3 ^ positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^-9.5 ^0.3 ^ 0 0.1 0 0 1 force
execute rotated ~45 ~ positioned ^ ^0.3 ^9.5 positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^ ^0.3 ^9.5 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^ ^0.3 ^-9.5 positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^ ^0.3 ^-9.5 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^9.5 ^0.3 ^ positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^9.5 ^0.3 ^ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^-9.5 ^0.3 ^ positioned over motion_blocking_no_leaves unless entity @s[distance=..10.5] at @s run particle wax_off ^-9.5 ^0.3 ^ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute unless score #.20 blue.misc matches 4 run return fail
execute as @a[distance=..9.5,advancements={blue:tr/trust={ward=true}},gamemode=!spectator] positioned ~-9.5 ~-2 ~-9.5 run tag @s[dx=27,dy=5,dz=27] add blue.tr.ward_in
effect give @a[tag=blue.tr.ward_in,predicate=!blue:shared/has_regen] regeneration 3 0 true
effect give @a[tag=blue.tr.ward_in,scores={blue.food=..12}] saturation 1 0 true
execute at @a[tag=blue.tr.ward_in] run particle electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 3
effect give @a[tag=blue.tr.ward_in] resistance 2 0 true
effect clear @a[tag=blue.tr.ward_in] poison
effect clear @a[tag=blue.tr.ward_in] wither
tag @a[tag=blue.tr.ward_in] remove blue.tr.ward_in
kill @s[scores={blue.misc=550..}]