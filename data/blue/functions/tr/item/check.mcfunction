tag @s add blue.tr.checked
data modify storage blue:trims item set from entity @s
execute on origin if entity @s[gamemode=creative] run return 0
execute if data storage blue:trims item{Age:5999s} run return 0
execute if data storage blue:trims item.Item.tag.Trim run function blue:tr/item/armor_tag
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:trims item.Item
execute as b163102f-0-0-0-100000000 store success score #.temp blue.misc if predicate blue:tr/hold_weapon
execute if score #.temp blue.misc matches 1 if score #.tr.ability_shortcuts blue.config matches 2..3 run function blue:tr/item/shortcut
execute as b163102f-0-0-0-100000000 unless predicate blue:tr/hold_template run return 0
data remove storage blue:trims merge.item_data.Owner
data modify storage blue:trims merge.item_data.Owner set from storage blue:trims item.Thrower
data modify entity @s {} merge from storage blue:trims merge.item_data
execute on origin run tag @s add blue.tr.quick_return
tp @s @a[tag=blue.tr.quick_return,limit=1]
tag @a[tag=blue.tr.quick_return,limit=1] remove blue.tr.quick_return
tag @s add blue.tr.return
execute if data storage blue:trims item.Item:{id:"minecraft:wayfinder_armor_trim_smithing_template"} run tag @s add blue.tr.wayfinder_item
execute if data storage blue:trims item.Item:{id:"minecraft:silence_armor_trim_smithing_template"} run tag @s add blue.tr.silence_item
execute if data storage blue:trims item.Item:{id:"minecraft:shaper_armor_trim_smithing_template"} run tag @s add blue.tr.shaper_item
execute if data storage blue:trims item.Item:{id:"minecraft:raiser_armor_trim_smithing_template"} run tag @s add blue.tr.raiser_item
execute if data storage blue:trims item.Item:{id:"minecraft:sentry_armor_trim_smithing_template"} run tag @s add blue.tr.sentry_item
execute if data storage blue:trims item.Item:{id:"minecraft:spire_armor_trim_smithing_template"} run tag @s add blue.tr.spire_item
execute if data storage blue:trims item.Item:{id:"minecraft:coast_armor_trim_smithing_template"} run tag @s add blue.tr.coast_item
execute if data storage blue:trims item.Item:{id:"minecraft:snout_armor_trim_smithing_template"} run tag @s add blue.tr.snout_item
execute if data storage blue:trims item.Item:{id:"minecraft:ward_armor_trim_smithing_template"} run tag @s add blue.tr.ward_item
execute if data storage blue:trims item.Item:{id:"minecraft:dune_armor_trim_smithing_template"} run tag @s add blue.tr.dune_item
execute if data storage blue:trims item.Item:{id:"minecraft:wild_armor_trim_smithing_template"} run tag @s add blue.tr.wild_item
execute if data storage blue:trims item.Item:{id:"minecraft:tide_armor_trim_smithing_template"} run tag @s add blue.tr.tide_item
execute if data storage blue:trims item.Item:{id:"minecraft:host_armor_trim_smithing_template"} run tag @s add blue.tr.host_item
execute if data storage blue:trims item.Item:{id:"minecraft:eye_armor_trim_smithing_template"} run tag @s add blue.tr.eye_item
execute if data storage blue:trims item.Item:{id:"minecraft:rib_armor_trim_smithing_template"} run tag @s add blue.tr.rib_item
execute if data storage blue:trims item.Item:{id:"minecraft:vex_armor_trim_smithing_template"} run tag @s add blue.tr.vex_item