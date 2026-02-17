execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run tellraw @s [{"text":"- ","color":"dark_gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.trim_limit","fallback":"already has a trim"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.setting_enabled","fallback":"The %s setting is enabled\n%s","color":"gray","with":[{"translate":"blue.tr.limit_owned_trims","fallback":"Limit Owned Trims","color":"white"},{"translate":"blue.tr.limit_owned_trims_hover","fallback":"Limit the amount of trims a player can own to a specific amount (OFF, 1, 2, 3, 4)","color":"dark_gray","italic":true}]}}}]
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/tags={trim_limit=true}},limit=1] run return 0
execute if score @s[tag=blue.tr.dune] Trims_Menu.BLUE matches 532 run function blue:tr/inv/transfer/owner/dune
execute if score @s[tag=blue.tr.wild] Trims_Menu.BLUE matches 533 run function blue:tr/inv/transfer/owner/wild
execute if score @s[tag=blue.tr.tide] Trims_Menu.BLUE matches 534 run function blue:tr/inv/transfer/owner/tide
execute if score @s[tag=blue.tr.host] Trims_Menu.BLUE matches 535 run function blue:tr/inv/transfer/owner/host
execute if score @s[tag=blue.tr.eye] Trims_Menu.BLUE matches 536 run function blue:tr/inv/transfer/owner/eye
execute if score @s[tag=blue.tr.rib] Trims_Menu.BLUE matches 537 run function blue:tr/inv/transfer/owner/rib
execute if score @s[tag=blue.tr.vex] Trims_Menu.BLUE matches 538 run function blue:tr/inv/transfer/owner/vex
execute if entity @s[tag=blue.tr.transfer_failed] run function blue:tr/inv/transfer/owner/fail
setblock 200600 2 200600 barrel{}