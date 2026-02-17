execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run tellraw @s [{"text":"- ","color":"dark_gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.trim_limit","fallback":"already has a trim"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.setting_enabled","fallback":"The %s setting is enabled\n%s","color":"gray","with":[{"translate":"blue.tr.limit_owned_trims","fallback":"Limit Owned Trims","color":"white"},{"translate":"blue.tr.limit_owned_trims_hover","fallback":"Limit the amount of trims a player can own to a specific amount (OFF, 1, 2, 3, 4)","color":"dark_gray","italic":true}]}}}]
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run return 0
execute if score @s[tag=blue.tr.wayfinder] Trims_Menu.BLUE matches 521 run function blue:tr/inv/transfer/owner/wayfinder
execute if score @s[tag=blue.tr.silence] Trims_Menu.BLUE matches 522 run function blue:tr/inv/transfer/owner/silence
execute if score @s[tag=blue.tr.raiser] Trims_Menu.BLUE matches 523 run function blue:tr/inv/transfer/owner/raiser
execute if score @s[tag=blue.tr.shaper] Trims_Menu.BLUE matches 524 run function blue:tr/inv/transfer/owner/shaper
execute if score @s[tag=blue.tr.sentry] Trims_Menu.BLUE matches 525 run function blue:tr/inv/transfer/owner/sentry
execute if score @s[tag=blue.tr.spire] Trims_Menu.BLUE matches 526 run function blue:tr/inv/transfer/owner/spire
execute if score @s[tag=blue.tr.coast] Trims_Menu.BLUE matches 527 run function blue:tr/inv/transfer/owner/coast
execute if score @s[tag=blue.tr.snout] Trims_Menu.BLUE matches 528 run function blue:tr/inv/transfer/owner/snout
execute if score @s[tag=blue.tr.ward] Trims_Menu.BLUE matches 529 run function blue:tr/inv/transfer/owner/ward
execute if entity @s[tag=blue.tr.transfer_failed] run function blue:tr/inv/transfer/owner/fail
setblock 200600 2 200600 barrel{}