scoreboard players add #.vex.sneak blue.misc 1
execute store success score #.temp blue.misc if predicate {"condition":"location_check","predicate":{"structures":["mansion","pillager_outpost"]}}
execute if score #.temp blue.misc matches 0 store result score #.vex.isolation blue.misc if entity @a[gamemode=!spectator,gamemode=!creative,predicate=!blue:tr/true_invis,distance=0.01..9,limit=2]
execute if score #.temp blue.misc matches 0 if score #.vex.isolation blue.misc matches 0 store result score #.vex.isolation blue.misc if entity @e[type=!#blue:shared/peaceful,type=!player,distance=0.01..5,limit=2]
execute if score #.temp blue.misc matches 1 run scoreboard players set #.vex.isolation blue.misc 1
execute unless score #.vex.isolation blue.misc matches 1 if score #.vex.isolated blue.misc matches 1 run function blue:tr/effects/vex/de-isolate
execute if score #.vex.sneak blue.misc matches -1 run function blue:tr/effects/vex/lunge/available
execute if score #.vex.sneak blue.misc matches 1..6 if entity @s[advancements={blue:tr/tags={not_sneaking=true}},predicate=blue:shared/is_sneaking_flag] rotated ~ -20 run function blue:tr/effects/vex/lunge/start
execute if score #.vex.sneak blue.misc matches 7.. if entity @s[advancements={blue:tr/tags={not_sneaking=true}},predicate=blue:shared/is_sneaking_flag] run function blue:tr/effects/vex/lunge/pre
execute if score #.vex.sneak blue.misc matches ..-188 run function blue:tr/effects/vex/lunge/active
execute if score #.vex.isolation blue.misc matches 1 run return run function blue:tr/effects/vex/isolation
execute if score #.vex.ambient blue.misc matches 2 run particle crit ~ ~0.9 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.vex.ambient blue.misc matches 4 store success score #.vex.ambient blue.misc run particle crit ~ ~0.9 ~ 0.25 0.3 0.25 0 1 normal @a[scores={blue.particles=1..}]
scoreboard players add #.vex.ambient blue.misc 1