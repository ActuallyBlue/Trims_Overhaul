advancement revoke @s only blue:tr/untrim req
execute unless items entity @s armor.* *[trim] run return fail
scoreboard players set #.temp blue.misc 0
execute anchored eyes positioned ^ ^ ^0.25 run function blue:tr/inv/untrim/cast
execute if score #.tr.manual_untrimming blue.config matches 0 run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.manual_untrimming","fallback":"Manual Untrimming","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.manual_untrimming_hover","fallback":"Players can un-trim their armor with Smithing Tables (ON, OFF)","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.manual_untrimming_hover","fallback":"Players can un-trim their armor with Smithing Tables (ON, OFF)","color":"gray"}},"italic":true},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
item replace block 200600 2 200600 container.3 from entity @s armor.head
item replace block 200600 2 200600 container.2 from entity @s armor.chest
item replace block 200600 2 200600 container.1 from entity @s armor.legs
item replace block 200600 2 200600 container.0 from entity @s armor.feet
data modify storage blue:trims inventory set from block 200600 2 200600 Items
execute positioned ~ ~1.7 ~ run function blue:tr/inv/untrim/head with storage blue:trims inventory[{Slot:3b}].components."minecraft:trim"
execute positioned ~ ~1.25 ~ run function blue:tr/inv/untrim/chest with storage blue:trims inventory[{Slot:2b}].components."minecraft:trim"
execute positioned ~ ~0.75 ~ run function blue:tr/inv/untrim/legs with storage blue:trims inventory[{Slot:1b}].components."minecraft:trim"
execute positioned ~ ~0.25 ~ run function blue:tr/inv/untrim/feet with storage blue:trims inventory[{Slot:0b}].components."minecraft:trim"
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.head blue:shared/remove_trim
item modify entity @s armor.chest blue:shared/remove_trim
item modify entity @s armor.legs blue:shared/remove_trim
item modify entity @s armor.feet blue:shared/remove_trim