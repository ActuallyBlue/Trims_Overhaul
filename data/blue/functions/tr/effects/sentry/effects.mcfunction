execute as @e[type=vex,distance=..16,limit=2,sort=nearest] at @s run function blue:tr/effects/sentry/vex
execute if entity @e[type=ravager,distance=..24,limit=1] run effect give @s resistance 2 0 true
execute if entity @e[type=vindicator,distance=..24,limit=1] run effect give @s strength 2 0 true
execute if entity @e[type=#raiders,type=!ravager,type=!vindicator,type=!pillager,distance=..32,limit=1] run effect give @s speed 4 0
effect give @e[type=#raiders,distance=..80,sort=nearest,limit=1] glowing 3 0 true
particle enchanted_hit ~ ~0.9 ~ 0.3 0.4 0.3 0 5 normal @a[scores={blue.particles=1..}]