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
execute if items entity @s contents *[trim~{pattern:"silence"}] run return run tag @s add blue.tr.silence_item
execute if items entity @s contents *[trim~{pattern:"shaper"}] run return run tag @s add blue.tr.shaper_item
execute if items entity @s contents *[trim~{pattern:"spire"}] run return run tag @s add blue.tr.spire_item
execute if items entity @s contents *[trim~{pattern:"wild"}] run return run tag @s add blue.tr.wild_item
execute if items entity @s contents *[trim~{pattern:"wayfinder"}] run return run tag @s add blue.tr.wayfinder_item
execute if items entity @s contents *[trim~{pattern:"tide"}] run return run tag @s add blue.tr.tide_item
execute if items entity @s contents *[trim~{pattern:"eye"}] run return run tag @s add blue.tr.eye_item
execute if items entity @s contents *[trim~{pattern:"rib"}] run return run tag @s add blue.tr.rib_item
execute if items entity @s contents *[trim~{pattern:"snout"}] run return run tag @s add blue.tr.snout_item
execute if items entity @s contents *[trim~{pattern:"dune"}] run return run tag @s add blue.tr.dune_item
execute if items entity @s contents *[trim~{pattern:"raiser"}] run return run tag @s add blue.tr.raiser_item
execute if items entity @s contents *[trim~{pattern:"host"}] run return run tag @s add blue.tr.host_item
execute if items entity @s contents *[trim~{pattern:"coast"}] run return run tag @s add blue.tr.coast_item
execute if items entity @s contents *[trim~{pattern:"sentry"}] run return run tag @s add blue.tr.sentry_item
execute if items entity @s contents *[trim~{pattern:"vex"}] run return run tag @s add blue.tr.vex_item
execute if items entity @s contents *[trim~{pattern:"ward"}] run tag @s add blue.tr.ward_item