execute if score #.tr.manual_transferring blue.config matches 0 unless entity @s[gamemode=creative] run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.transfers_disabled","fallback":"Manual transfers are disabled via the server settings","color":"gray"}]
execute if score #.tr.manual_transferring blue.config matches 0 unless entity @s[gamemode=creative] run return 0
tag @s add blue.tr.transfer_user
item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data modify storage blue:data trims.inventory set from block 200600 2 200600 Items
scoreboard players operation #.link blue.id = @s blue.tr.transfer
tag @a[distance=0.01..11,predicate=blue:shared/id_link,limit=1] add blue.tr.transfer_target
execute if score @s TrimCMDs.BLUE matches 521..529 run function blue:tr/inv/transfer/core0
execute if score @s TrimCMDs.BLUE matches 530..538 run function blue:tr/inv/transfer/core1
tag @a[tag=blue.tr.transfer_target] remove blue.tr.transfer_target
tag @s remove blue.tr.transfer_user