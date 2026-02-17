execute at @s[tag=blue.tr.gamble.item] run return run function blue:tr/effects/snout/gamble/item/rolling
execute on origin if entity @s[tag=blue.tr.snout,predicate=!blue:shared/is_sneaking] run scoreboard players set #.temp blue.misc -5521
execute unless score #.temp blue.misc matches -5521 run return run tag @s add blue.tr.snout_checked
execute store result score #.temp blue.misc if entity @e[tag=blue.tr.gamble.item,type=item]
execute if score #.temp blue.misc >= #.snout.gamble_limit blue.config unless score #.snout.gamble_limit blue.config matches -1 run return run tag @s add blue.tr.snout_checked
scoreboard players reset #.temp blue.misc
execute if items entity @s contents gold_nugget store success score #.temp blue.misc run tag @s add blue.tr.gold_nugget
execute if items entity @s contents gold_ingot store success score #.temp blue.misc run tag @s add blue.tr.gold_ingot
execute if items entity @s contents gold_block store success score #.temp blue.misc run tag @s add blue.tr.gold_block
execute unless score #.temp blue.misc matches 1 run tag @s add blue.tr.snout_checked
execute if score #.temp blue.misc matches 1 if score #.snout.throw_buff blue.misc matches 1.. run function blue:tr/effects/snout/gamble/throw/entity
execute if score #.temp blue.misc matches 1 run tag @s add blue.tr.gamble.item