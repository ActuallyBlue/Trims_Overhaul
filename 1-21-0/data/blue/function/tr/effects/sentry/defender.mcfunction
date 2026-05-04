execute as @e[distance=..16,limit=2,sort=nearest,type=vex] at @s run function blue:tr/effects/sentry/vex
execute if entity @e[distance=..24,limit=1,type=ravager] run effect give @s resistance 2 0 true
execute if entity @e[distance=..24,limit=1,type=vindicator] run effect give @s strength 2 0 true
execute if entity @e[type=#blue:tr/sentry_speed,distance=..32,limit=1] run effect give @s speed 4 0
execute store success score #.temp blue.misc run effect give @n[type=#raiders,predicate=blue:shared/can_see_sky,tag=!smithed.strict,distance=..80] glowing 3 0
execute if score #.temp blue.misc matches 0 run effect give @n[type=#raiders,tag=!smithed.strict,distance=..80] glowing 3 0
particle enchanted_hit ~ ~0.9 ~ 0.3 0.4 0.3 0 5 normal @a[scores={blue.particles=1..}]