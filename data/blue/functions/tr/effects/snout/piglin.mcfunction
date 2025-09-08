execute store result score #.temp blue.misc run data get entity @s Brain.memories."minecraft:admiring_item".ttl
execute unless score #.temp blue.misc matches 90.. run return 0
execute if score #.temp0 blue.misc matches 0 run data modify entity @s Brain.memories."minecraft:admiring_item".ttl set value 90L
execute if score #.temp0 blue.misc matches 0 run return 0
execute store success score #.temp blue.misc if entity @a[tag=blue.tr.snout,predicate=blue:tr/gold_set,limit=1]
execute if score #.temp blue.misc matches 0 run data modify entity @s Brain.memories."minecraft:admiring_item".ttl set value 60L
execute if score #.temp blue.misc matches 1 run data modify entity @s Brain.memories."minecraft:admiring_item".ttl set value 30L