scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/bolt/loop 1t
execute if predicate [{condition:"random_chance",chance:0.5},{condition:"entity_properties",entity:"this",predicate:{periodic_tick:10}}] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,advancements={blue:tr/trust={bolt=false}}] at @s run function blue:tr/effects/bolt/zap
execute unless score @s blue.misc matches 60.. if block ~ ~ ~ #blue:shared/copper_blocks run return fail
execute as @a[tag=blue.tr.bolt,limit=1] positioned ~ ~-0.5 ~ facing entity @s feet run function blue:tr/effects/bolt/conduct/player/start
execute if block ~ ~ ~ #blue:shared/copper_blocks run fill ~ ~ ~ ~ ~ ~ air destroy
particle wax_on ~ ~ ~ 0.4 0.4 0.4 0.1 12
kill