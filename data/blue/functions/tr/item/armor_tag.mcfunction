data remove storage blue:data trims.merge.item_data.Owner
data modify storage blue:data trims.merge.item_data.Owner set from storage blue:data trims.item.Thrower
data modify entity @s {} merge from storage blue:data trims.merge.item_data
tag @s add blue.tr.armor
tag @s add blue.tr.return
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:wayfinder"} run tag @s add blue.tr.wayfinder_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:silence"} run tag @s add blue.tr.silence_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:shaper"} run tag @s add blue.tr.shaper_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:raiser"} run tag @s add blue.tr.raiser_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:sentry"} run tag @s add blue.tr.sentry_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:spire"} run tag @s add blue.tr.spire_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:coast"} run tag @s add blue.tr.coast_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:snout"} run tag @s add blue.tr.snout_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:ward"} run tag @s add blue.tr.ward_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:dune"} run tag @s add blue.tr.dune_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:wild"} run tag @s add blue.tr.wild_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:tide"} run tag @s add blue.tr.tide_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:host"} run tag @s add blue.tr.host_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:eye"} run tag @s add blue.tr.eye_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:rib"} run tag @s add blue.tr.rib_item
execute if data storage blue:data trims.item.Item.tag.Trim:{pattern:"minecraft:vex"} run tag @s add blue.tr.vex_item