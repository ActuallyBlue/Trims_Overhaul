advancement revoke @s only blue:tr/untrim
execute anchored eyes rotated ~ 0 if block ^ ^ ^0.5 smithing_table run fill ^ ^ ^0.5 ^ ^ ^0.5 air destroy
execute anchored eyes rotated ~ 0 unless block ^ ^ ^0.5 smithing_table if block ^ ^ ^1.5 smithing_table run fill ^ ^ ^1.5 ^ ^ ^1.5 air destroy
execute if score #.tr.manual_untrimming blue.config matches 0 run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.untrim_disabled","fallback":"Manual untrims are disabled via the server settings","color":"gray"}]
execute unless items entity @s armor.* *[trim] run return fail
item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data modify storage blue:data trims.inventory set from block 200600 2 200600 Items
execute positioned ~ ~1.7 ~ run function blue:tr/inv/transfer/untrim_head with storage blue:data trims.inventory[{Slot:3b}].components."minecraft:trim"
execute positioned ~ ~1.25 ~ run function blue:tr/inv/transfer/untrim_chest with storage blue:data trims.inventory[{Slot:2b}].components."minecraft:trim"
execute positioned ~ ~0.75 ~ run function blue:tr/inv/transfer/untrim_legs with storage blue:data trims.inventory[{Slot:1b}].components."minecraft:trim"
execute positioned ~ ~0.25 ~ run function blue:tr/inv/transfer/untrim_feet with storage blue:data trims.inventory[{Slot:0b}].components."minecraft:trim"
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.head blue:remove_trim
item modify entity @s armor.chest blue:remove_trim
item modify entity @s armor.legs blue:remove_trim
item modify entity @s armor.feet blue:remove_trim