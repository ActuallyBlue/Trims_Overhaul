execute store success score #.bolt.ambient blue.misc unless score #.bolt.ambient blue.misc matches 1
execute if score #.bolt.ambient blue.misc matches 0 run particle dust{color:[0.8f,0.5f,0f],scale:0.6f} ~ ~0.7 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.bolt.ambient blue.misc matches 1 run particle dust{color:[0.8f,0.5f,0f],scale:0.6f} ~ ~0.7 ~ 0.3 0.3 0.3 0 1 normal @a[scores={blue.particles=2..}]
execute as @n[type=item,distance=..4,tag=!blue.tr.checked,predicate=blue:tr/copper] if function blue:tr/effects/bolt/owner run function blue:tr/effects/bolt/item
execute if score #.20 blue.misc matches 1 if predicate {"condition":"location_check","predicate":{"structures":"trial_chambers"}} run effect give @s haste 2 1 true
execute unless predicate blue:tr/overcharged run return fail
particle electric_spark ~ ~1 ~ 0.25 0.35 0.25 0.1 2
execute store result score #.temp blue.misc run random value 1..8
execute unless score #.temp blue.misc matches 8 run return fail
execute as @a[distance=0.01..1.8,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/bolt/zap
playsound entity.firework_rocket.twinkle player @a ~ ~ ~ 0.5 2
particle electric_spark ~ ~1 ~ 0.3 0.4 0.3 0.8 10
particle wax_off ~ ~1 ~ 0.3 0.4 0.3 0 1