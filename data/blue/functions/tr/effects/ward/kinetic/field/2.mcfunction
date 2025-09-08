execute positioned ^ ^0.3 ^7.25 positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^ ^0.3 ^-7.25 positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^7.25 ^0.3 ^ positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute positioned ^-7.25 ^0.3 ^ positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.1 0 0 1 force
execute rotated ~45 ~ positioned ^ ^0.3 ^7.25 positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^ ^0.3 ^-7.25 positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^7.25 ^0.3 ^ positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^-7.25 ^0.3 ^ positioned over motion_blocking if entity @s[distance=..8.25] run particle wax_off ~ ~0.1 ~ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute positioned ^ ^0.3 ^7.25 positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^ ^0.3 ^7.25 0 0.1 0 0 1 force
execute positioned ^ ^0.3 ^-7.25 positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^ ^0.3 ^-7.25 0 0.1 0 0 1 force
execute positioned ^7.25 ^0.3 ^ positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^7.25 ^0.3 ^ 0 0.1 0 0 1 force
execute positioned ^-7.25 ^0.3 ^ positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^-7.25 ^0.3 ^ 0 0.1 0 0 1 force
execute rotated ~45 ~ positioned ^ ^0.3 ^7.25 positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^ ^0.3 ^7.25 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^ ^0.3 ^-7.25 positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^ ^0.3 ^-7.25 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^7.25 ^0.3 ^ positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^7.25 ^0.3 ^ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute rotated ~45 ~ positioned ^-7.25 ^0.3 ^ positioned over motion_blocking unless entity @s[distance=..8.25] at @s run particle wax_off ^-7.25 ^0.3 ^ 0 0.2 0 0 1 normal @a[scores={blue.particles=1..}]
execute unless score #.20 blue.misc matches 4 run return 0
execute as @a[distance=..7.25,advancements={blue:tr/trust={ward=true}},gamemode=!spectator] positioned ~-7.25 ~-1.75 ~-7.25 run tag @s[dx=27,dy=4.5,dz=27] add blue.tr.ward_in
effect give @a[tag=blue.tr.ward_in,predicate=!blue:shared/has_regen] regeneration 3 0 true
effect give @a[tag=blue.tr.ward_in,scores={blue.food=..10}] saturation 1 0 true
execute at @a[tag=blue.tr.ward_in] run particle electric_spark ~ ~0.1 ~ 0.2 0 0.2 0.1 2
effect give @a[tag=blue.tr.ward_in] resistance 2 0 true
effect clear @a[tag=blue.tr.ward_in] poison
tag @a[tag=blue.tr.ward_in] remove blue.tr.ward_in
kill @s[scores={blue.misc=450..}]