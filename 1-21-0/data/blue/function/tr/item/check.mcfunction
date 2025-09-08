tag @s add blue.tr.checked
execute if items entity @s contents #blue:tr/templates run return run function blue:tr/item/template_tag
execute unless items entity @s contents *[trim] run return fail
execute on origin if entity @s[gamemode=creative] run return fail
execute if data entity @s {Age:5999s} run return run kill
data remove storage blue:data trims.merge.item_data.Owner
data modify storage blue:data trims.merge.item_data.Owner set from storage blue:data trims.item.Thrower
data modify entity @s {} merge from storage blue:data trims.merge.item_data
tag @s add blue.tr.armor
tag @s add blue.tr.return
execute if items entity @s contents *[trim~{pattern:"minecraft:silence"}] run return run tag @s add blue.tr.silence_item
execute if items entity @s contents *[trim~{pattern:"minecraft:shaper"}] run return run tag @s add blue.tr.shaper_item
execute if items entity @s contents *[trim~{pattern:"minecraft:spire"}] run return run tag @s add blue.tr.spire_item
execute if items entity @s contents *[trim~{pattern:"minecraft:wild"}] run return run tag @s add blue.tr.wild_item
execute if items entity @s contents *[trim~{pattern:"minecraft:wayfinder"}] run return run tag @s add blue.tr.wayfinder_item
execute if items entity @s contents *[trim~{pattern:"minecraft:tide"}] run return run tag @s add blue.tr.tide_item
execute if items entity @s contents *[trim~{pattern:"minecraft:eye"}] run return run tag @s add blue.tr.eye_item
execute if items entity @s contents *[trim~{pattern:"minecraft:rib"}] run return run tag @s add blue.tr.rib_item
execute if items entity @s contents *[trim~{pattern:"minecraft:flow"}] run return run tag @s add blue.tr.flow_item
execute if items entity @s contents *[trim~{pattern:"minecraft:bolt"}] run return run tag @s add blue.tr.bolt_item
execute if items entity @s contents *[trim~{pattern:"minecraft:snout"}] run return run tag @s add blue.tr.snout_item
execute if items entity @s contents *[trim~{pattern:"minecraft:dune"}] run return run tag @s add blue.tr.dune_item
execute if items entity @s contents *[trim~{pattern:"minecraft:raiser"}] run return run tag @s add blue.tr.raiser_item
execute if items entity @s contents *[trim~{pattern:"minecraft:host"}] run return run tag @s add blue.tr.host_item
execute if items entity @s contents *[trim~{pattern:"minecraft:coast"}] run return run tag @s add blue.tr.coast_item
execute if items entity @s contents *[trim~{pattern:"minecraft:sentry"}] run return run tag @s add blue.tr.sentry_item
execute if items entity @s contents *[trim~{pattern:"minecraft:vex"}] run return run tag @s add blue.tr.vex_item
execute if items entity @s contents *[trim~{pattern:"minecraft:ward"}] run tag @s add blue.tr.ward_item