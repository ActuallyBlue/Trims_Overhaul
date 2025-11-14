execute at @s[tag=blue.tr.gamble.item] run function blue:tr/effects/snout/gamble/item/rolling
execute if entity @s[tag=blue.tr.gamble.item] run return 0
execute on origin if entity @s[tag=blue.tr.snout,predicate=!blue:shared/is_sneaking] run scoreboard players set #.temp blue.misc -5521
execute unless score #.temp blue.misc matches -5521 run tag @s add blue.tr.snout_checked
execute unless score #.temp blue.misc matches -5521 run return 0
execute store result score #.temp blue.misc if entity @e[type=item,tag=blue.tr.gamble.item]
execute if score #.temp blue.misc >= #.snout.gamble_limit blue.config unless score #.snout.gamble_limit blue.config matches -1 run tag @s add blue.tr.snout_checked
execute if score #.temp blue.misc >= #.snout.gamble_limit blue.config unless score #.snout.gamble_limit blue.config matches -1 run return 0
data modify storage blue:data trims.item set from entity @s Item
execute if score #.snout.throw_buff blue.misc matches 1.. run function blue:tr/effects/snout/gamble/throw/entity
scoreboard players reset #.temp blue.misc
execute if data storage blue:data trims.item{id:"minecraft:gold_nugget"} store success score #.temp blue.misc run tag @s add blue.tr.gold_nugget
execute if data storage blue:data trims.item{id:"minecraft:gold_ingot"} store success score #.temp blue.misc run tag @s add blue.tr.gold_ingot
execute if data storage blue:data trims.item{id:"minecraft:gold_block"} store success score #.temp blue.misc run tag @s add blue.tr.gold_block
execute unless score #.temp blue.misc matches 1 run tag @s add blue.tr.snout_checked
execute if score #.temp blue.misc matches 1 run tag @s add blue.tr.gamble.item