data modify storage blue:data trims.item.Item set from entity @s Item
execute unless data storage blue:data trims.item.Item{Count:1b} run return 0
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:data trims.item.Item
execute on origin if entity @s[tag=blue.tr.coast] as b163102f-0-0-0-100000000 if predicate blue:tr/hold_fish run scoreboard players set #.temp0 blue.misc -596
execute unless score #.temp0 blue.misc matches -596 run return 0
scoreboard players reset #.temp0 blue.misc
execute on origin unless entity @s[predicate=!blue:shared/in_shipwreck,tag=!blue.tr.dragon_egg] run scoreboard players set #.temp0 blue.misc -597
tag @s add blue.tr.checked
execute if score #.coast.fire_cooldown blue.misc matches 1 run function blue:tr/item/quick_return
execute if score #.coast.fire_cooldown blue.misc matches 1 run return 0
execute if data storage blue:data trims.item.Item{id:"minecraft:cod"} on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/cod
execute if data storage blue:data trims.item.Item{id:"minecraft:salmon"} on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/salmon
execute if data storage blue:data trims.item.Item{id:"minecraft:cooked_cod"} on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/cod
execute if data storage blue:data trims.item.Item{id:"minecraft:pufferfish"} on origin at @s anchored eyes positioned ^ ^ ^0.5 run function blue:tr/effects/coast/fire/pufferfish
execute if data storage blue:data trims.item.Item{id:"minecraft:tropical_fish"} on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/tropical
execute if data storage blue:data trims.item.Item{id:"minecraft:cooked_salmon"} on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/salmon
kill