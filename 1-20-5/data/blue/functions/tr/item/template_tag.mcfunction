execute on origin if entity @s[gamemode=creative] run return fail
execute if data entity @s {Age:5999s} run return run kill
data remove storage blue:data trims.merge.item_data.Owner
data modify storage blue:data trims.merge.item_data.Owner set from storage blue:data trims.item.Thrower
data modify entity @s {} merge from storage blue:data trims.merge.item_data
tag @s add blue.tr.return
execute if items entity @s contents silence_armor_trim_smithing_template run return run tag @s add blue.tr.silence_item
execute if items entity @s contents shaper_armor_trim_smithing_template run return run tag @s add blue.tr.shaper_item
execute if items entity @s contents spire_armor_trim_smithing_template run return run tag @s add blue.tr.spire_item
execute if items entity @s contents wild_armor_trim_smithing_template run return run tag @s add blue.tr.wild_item
execute if items entity @s contents wayfinder_armor_trim_smithing_template run return run tag @s add blue.tr.wayfinder_item
execute if items entity @s contents tide_armor_trim_smithing_template run return run tag @s add blue.tr.tide_item
execute if items entity @s contents eye_armor_trim_smithing_template run return run tag @s add blue.tr.eye_item
execute if items entity @s contents rib_armor_trim_smithing_template run return run tag @s add blue.tr.rib_item
execute if items entity @s contents snout_armor_trim_smithing_template run return run tag @s add blue.tr.snout_item
execute if items entity @s contents dune_armor_trim_smithing_template run return run tag @s add blue.tr.dune_item
execute if items entity @s contents raiser_armor_trim_smithing_template run return run tag @s add blue.tr.raiser_item
execute if items entity @s contents host_armor_trim_smithing_template run return run tag @s add blue.tr.host_item
execute if items entity @s contents coast_armor_trim_smithing_template run return run tag @s add blue.tr.coast_item
execute if items entity @s contents sentry_armor_trim_smithing_template run return run tag @s add blue.tr.sentry_item
execute if items entity @s contents vex_armor_trim_smithing_template run return run tag @s add blue.tr.vex_item
execute if items entity @s contents ward_armor_trim_smithing_template run tag @s add blue.tr.ward_item