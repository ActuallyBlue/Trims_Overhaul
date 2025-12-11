execute if score #.60 blue.misc matches 25 if entity @e[type=villager,distance=..100,limit=1] if entity @e[type=#raiders,distance=..64,limit=1] run function blue:tr/effects/sentry/defender
execute if score #.60 blue.misc matches 50 if entity @e[type=villager,distance=..100,limit=1] if entity @e[type=#raiders,distance=..64,limit=1] run particle enchanted_hit ~ ~0.9 ~ 0.3 0.3 0.3 0 5 normal @a[scores={blue.particles=2..}]
scoreboard players add #.sentry.ambient blue.misc 1
execute if score #.sentry.ambient blue.misc matches 2 run particle enchanted_hit ~ ~0.8 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.sentry.ambient blue.misc matches 5 store success score #.sentry.ambient blue.misc run particle enchanted_hit ~ ~0.8 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.sentry.charge blue.misc matches 0.. unless predicate blue:tr/can_shoot run scoreboard players reset #.sentry.charge blue.misc
execute anchored eyes positioned ^ ^ ^1 as @e[type=arrow,tag=!blue.tr.checked,distance=..5] run function blue:tr/effects/sentry/pre-arrow
execute unless predicate {"condition":"entity_properties","entity":"this","predicate":{"effects":{"hero_of_the_village":{}}}} run return fail
effect clear @s slowness
effect clear @s poison
execute unless score #.sentry.charge blue.misc matches ..0 if predicate blue:tr/can_shoot anchored eyes run function blue:tr/effects/sentry/ballista/can_shoot
execute if score #.sentry.charge blue.misc matches ..0 run scoreboard players add #.sentry.charge blue.misc 1