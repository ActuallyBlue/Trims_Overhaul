scoreboard players add #.rib.ambient blue.misc 1
execute if score #.rib.ambient blue.misc matches 5.. store success score #.rib.ambient blue.misc run particle small_flame ~ ~0.7 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=1..}]
execute unless score #.rib.projectile_cooldown blue.misc matches 1 if predicate blue:shared/is_sneaking anchored eyes run function blue:tr/effects/rib/proj/detect
execute if score #.rib.was_sneaking blue.misc matches 1 unless predicate blue:shared/is_sneaking run function blue:tr/effects/rib/proj/reset
execute as @e[distance=..20,tag=!blue.tr.rib_deflected,type=fireball] at @s run function blue:tr/effects/rib/deflect/check
execute unless entity @s[tag=blue.tr.mats.blaze] run return fail
execute if score #.rib.ambient blue.misc matches 3 run particle small_flame ~ ~0.7 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.rib.ashen_active blue.misc matches 1.. run function blue:tr/effects/rib/emp/ashen/active
execute if score @s blue.health matches ..6 run function blue:tr/effects/rib/emp/aegis
execute unless score #.20 blue.misc matches 3 run return fail
effect give @s fire_resistance 2 0 true
effect clear @s wither
execute unless predicate blue:shared/has_vehicle run return fail
execute on vehicle run effect give @s fire_resistance 2 0 true
execute on vehicle run effect clear @s wither