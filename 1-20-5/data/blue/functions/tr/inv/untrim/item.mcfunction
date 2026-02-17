
data modify storage blue:trims item set from entity @s
function blue:tr/inv/untrim/item_setup with storage blue:trims item.Item.components."minecraft:trim"
execute as @e[tag=blue.tr.untrim_temp,type=item,limit=2] run data modify entity @s Motion set from storage blue:trims item.Motion
tag @e[tag=blue.tr.untrim_temp,type=item,limit=2] remove blue.tr.untrim_temp
item modify entity @s contents blue:shared/remove_trim