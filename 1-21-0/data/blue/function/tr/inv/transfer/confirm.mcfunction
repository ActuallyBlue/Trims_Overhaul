execute if score #.tr.manual_transferring blue.config matches 0 unless entity @s[gamemode=creative] run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.manual_transferring","fallback":"Manual Transferring","color":"white"},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
advancement grant @s only blue:tr/inv_checks
tag @s add blue.tr.transfer_user
scoreboard players operation #.link blue.id = @s blue.tr.transfer
tag @a[distance=0.01..11,predicate=blue:shared/id_link,limit=1] add blue.tr.transfer_target
execute if score @s Trims_Menu.BLUE matches 521..529 run function blue:tr/inv/transfer/core_low
execute if score @s Trims_Menu.BLUE matches 530..538 run function blue:tr/inv/transfer/core_high
tag @a[tag=blue.tr.transfer_target] remove blue.tr.transfer_target
tag @s remove blue.tr.transfer_user