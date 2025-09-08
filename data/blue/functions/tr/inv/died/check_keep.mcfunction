data modify storage blue:data trims.item set from entity @s
execute if data storage blue:data trims.item{Age:5999s} run return 0
tag @s add blue.tr.checked
scoreboard players reset #.temp blue.misc
execute if data storage blue:data trims.item.Item.tag.Trim run function blue:tr/inv/died/keep
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:data trims.item.Item
execute as b163102f-0-0-0-100000000 unless predicate blue:tr/hold_template run return 0
function blue:tr/inv/died/keep