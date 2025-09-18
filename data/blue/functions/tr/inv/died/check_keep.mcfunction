tag @s add blue.tr.checked
scoreboard players reset #.temp blue.misc
data modify storage blue:data trims.item.Item set from entity @s Item
execute if data storage blue:data trims.item.Item.tag.Trim run function blue:tr/inv/died/keep
execute if data storage blue:data trims.item.Item.tag.Trim run return 0
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:data trims.item.Item
execute as b163102f-0-0-0-100000000 unless predicate blue:tr/hold_template run return 0
function blue:tr/inv/died/keep