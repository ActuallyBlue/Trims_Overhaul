execute unless data storage blue:trims temp.inventory[].components."minecraft:trim" run return fail
scoreboard players set #.temp blue.misc 0
execute anchored eyes positioned ^ ^ ^0.25 run function blue:tr/inv/untrim/cast
execute if score #.temp0 blue.misc matches 1 if score #.temp blue.misc matches 0 run return fail
execute if score #.tr.manual_untrimming blue.config matches 0 run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.manual_untrimming","fallback":"Manual Untrimming","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.manual_untrimming_hover","fallback":"Players can un-trim their armor with Smithing Tables (ON, OFF)","color":"gray"}},"italic":true},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data remove block 200600 2 200600 Items[].components."minecraft:trim"
item replace entity @s armor.head from block 200600 2 200600 container.7
item replace entity @s armor.chest from block 200600 2 200600 container.6
item replace entity @s armor.legs from block 200600 2 200600 container.5
item replace entity @s armor.feet from block 200600 2 200600 container.4
setblock 200600 2 200600 barrel{}
execute unless data storage blue:trims temp.inventory[].components."minecraft:trim" run return 0
particle item{item:sculk_vein} ~ ~1.3 ~ 0.24 0.4 0.24 0.05 32