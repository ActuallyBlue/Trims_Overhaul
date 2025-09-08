scoreboard players add #.vex.sneak blue.misc 1
execute store success score #.temp blue.misc if predicate blue:tr/vex_isolate
execute if score #.temp blue.misc matches 0 store result score #.isolation blue.misc if entity @a[gamemode=!spectator,gamemode=!creative,distance=0.01..9,limit=2]
execute if score #.temp blue.misc matches 0 store result score #.isolation blue.misc if entity @e[type=!#blue:tr/peaceful,type=!player,distance=0.01..5,limit=2]
execute if score #.temp blue.misc matches 1 run scoreboard players set #.isolation blue.misc 1
execute unless score #.isolation blue.misc matches 1 if score #.isolated blue.misc matches 1 run function blue:tr/effects/vex/de-isolate
execute if score #.vex.sneak blue.misc matches 1..6 if entity @s[advancements={blue:tr/tags={not_sneaking=true}},predicate=blue:shared/is_sneaking] rotated ~ -20 run function blue:tr/effects/vex/lunge/start
execute if score #.vex.sneak blue.misc matches 7.. if entity @s[advancements={blue:tr/tags={not_sneaking=true}},predicate=blue:shared/is_sneaking] run function blue:tr/effects/vex/lunge/pre
execute if score #.vex.sneak blue.misc matches ..-108 run function blue:tr/effects/vex/lunge/active
execute if score #.isolation blue.misc matches 1 run function blue:tr/effects/vex/isolation
execute if score #.isolation blue.misc matches 1 run return 0
execute if score #.vex.ambient blue.misc matches 2 run particle crit ~ ~0.9 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.vex.ambient blue.misc matches 4 store success score #.vex.ambient blue.misc run particle crit ~ ~0.9 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
scoreboard players add #.vex.ambient blue.misc 1