data remove storage blue:trims merge.item_data.Owner
data modify storage blue:trims merge.item_data.Owner set from storage blue:trims item.Thrower
data modify entity @s {} merge from storage blue:trims merge.item_data
execute on origin run tag @s add blue.tr.quick_return
tp @s @a[tag=blue.tr.quick_return,limit=1]
tag @a[tag=blue.tr.quick_return,limit=1] remove blue.tr.quick_return
tag @s add blue.tr.armor
tag @s add blue.tr.return
schedule function blue:tr/item/store 2t replace
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wayfinder"} run tp @s @a[tag=blue.tr.wayfinder,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wayfinder"} run tag @s add blue.tr.wayfinder_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:silence"} run tp @s @a[tag=blue.tr.silence,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:silence"} run tag @s add blue.tr.silence_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:shaper"} run tp @s @a[tag=blue.tr.shaper,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:shaper"} run tag @s add blue.tr.shaper_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:raiser"} run tp @s @a[tag=blue.tr.raiser,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:raiser"} run tag @s add blue.tr.raiser_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:sentry"} run tp @s @a[tag=blue.tr.sentry,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:sentry"} run tag @s add blue.tr.sentry_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:spire"} run tp @s @a[tag=blue.tr.spire,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:spire"} run tag @s add blue.tr.spire_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:coast"} run tp @s @a[tag=blue.tr.coast,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:coast"} run tag @s add blue.tr.coast_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:snout"} run tp @s @a[tag=blue.tr.snout,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:snout"} run tag @s add blue.tr.snout_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:ward"} run tp @s @a[tag=blue.tr.ward,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:ward"} run tag @s add blue.tr.ward_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dune"} run tp @s @a[tag=blue.tr.dune,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dune"} run tag @s add blue.tr.dune_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wild"} run tp @s @a[tag=blue.tr.wild,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wild"} run tag @s add blue.tr.wild_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:tide"} run tp @s @a[tag=blue.tr.tide,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:tide"} run tag @s add blue.tr.tide_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:host"} run tp @s @a[tag=blue.tr.host,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:host"} run tag @s add blue.tr.host_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:eye"} run tp @s @a[tag=blue.tr.eye,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:eye"} run tag @s add blue.tr.eye_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:rib"} run tp @s @a[tag=blue.tr.rib,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:rib"} run tag @s add blue.tr.rib_item
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:vex"} run tp @s @a[tag=blue.tr.vex,limit=1]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:vex"} run tag @s add blue.tr.vex_item