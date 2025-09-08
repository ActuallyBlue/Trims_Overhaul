item replace entity b163102f-0-0-0-100000000 weapon from entity @s armor.chest
data modify storage blue:data trims.temp.elytra set from entity b163102f-0-0-0-100000000 HandItems[0]
execute if data storage blue:data trims.temp.elytra.tag.Trim{} run return 0
data modify storage blue:data trims.temp.elytra.tag.Trim set from storage blue:data trims.temp.elytra.tag.armElyData.chestplate.tag.Trim
data remove storage blue:data trims.temp.elytra.tag.armElyData.chestplate.tag.Trim
data modify entity b163102f-0-0-0-100000000 HandItems[0] set from storage blue:data trims.temp.elytra
item replace entity @s armor.chest from entity b163102f-0-0-0-100000000 weapon