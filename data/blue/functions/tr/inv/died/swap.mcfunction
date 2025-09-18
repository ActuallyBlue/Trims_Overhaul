scoreboard players set #.temp blue.misc 1
data modify storage blue:data trims.fake_inv append from storage blue:data trims.item.Item
data modify entity @s {} merge from storage blue:data trims.merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @a[tag=blue.tr.killer,limit=1]
execute unless data storage blue:data trims.item.Item.tag.Trim run return 0
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:wayfinder"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wayfinder"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:silence"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:silence"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:raiser"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:raiser"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:shaper"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:shaper"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:sentry"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:sentry"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:spire"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:spire"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:coast"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:coast"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:snout"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:snout"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:ward"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:ward"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:dune"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:dune"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:wild"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wild"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:tide"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:tide"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:host"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:host"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:eye"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:eye"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:rib"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:rib"}}}}] run function blue:tr/inv/died/extra
execute if data storage blue:data trims.item.Item.tag.Trim{pattern:"minecraft:vex"} as @e[type=item,distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:vex"}}}}] run function blue:tr/inv/died/extra