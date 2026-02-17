scoreboard players set #.temp blue.misc 1
data modify storage blue:trims fake_inv append from storage blue:trims item.Item
data modify entity @s {} merge from storage blue:trims merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @a[tag=blue.tr.killer,limit=1]
execute unless data storage blue:trims item.Item.tag.Trim run return 0
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wayfinder"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wayfinder"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:silence"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:silence"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:raiser"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:raiser"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:shaper"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:shaper"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:sentry"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:sentry"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:spire"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:spire"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:coast"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:coast"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:snout"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:snout"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:ward"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:ward"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dune"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:dune"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wild"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wild"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:tide"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:tide"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:host"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:host"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:eye"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:eye"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:rib"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:rib"}}}},type=item] run function blue:tr/inv/died/extra
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:vex"} as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:vex"}}}},type=item] run function blue:tr/inv/died/extra