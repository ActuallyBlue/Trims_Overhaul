$execute unless data storage blue:trims item.Item.components."minecraft:trim"{pattern:"minecraft:dragon_egg"} run function blue:tr/inv/untrim/macro {cmd:'summon item ~ ~ ~ {Item:{id:"$(pattern)_armor_trim_smithing_template"},Tags:["blue.tr.untrim_item","blue.tr.untrim_temp"],PickupDelay:40s}'}
execute if data storage blue:trims item.Item.components."minecraft:trim"{pattern:"minecraft:dragon_egg"} run function blue:tr/inv/untrim/macro {cmd:'summon item ~ ~ ~ {Item:{id:"dragon_egg"},Tags:["blue.tr.checked","blue.tr.untrim_temp"],PickupDelay:40s}'}
scoreboard players set #.template_loot blue.misc 1
item modify entity @e[tag=blue.tr.untrim_temp,tag=blue.tr.untrim_item,type=item,sort=nearest,limit=1] contents blue:tr/template
$data modify storage blue:trims temp.mat set from storage blue:trims materials."$(material)"
function blue:tr/inv/untrim/item_spawn with storage blue:trims temp