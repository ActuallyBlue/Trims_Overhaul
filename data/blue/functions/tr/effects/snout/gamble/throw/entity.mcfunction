tag @s add blue.tr.air_toggle
execute if data storage blue:data trims.item{id:"minecraft:gold_nugget"} run tag @s add blue.tr.add_trail
execute if score #.snout.throw_buff blue.misc matches 400.. if data storage blue:data trims.item{id:"minecraft:gold_ingot"} run tag @s add blue.tr.add_trail
execute if score #.snout.throw_buff blue.misc matches 600.. if data storage blue:data trims.item{id:"minecraft:gold_block"} run tag @s add blue.tr.add_trail
playsound item.trident.throw player @a ~ ~ ~ 1.5 2
data modify storage blue:data trims.temp.Motion set from entity @s Motion
execute store result storage blue:data trims.temp.Motion[0] double 0.004 run data get storage blue:data trims.temp.Motion[0] 1000
execute store result storage blue:data trims.temp.Motion[1] double 0.004 run data get storage blue:data trims.temp.Motion[1] 1000
execute store result storage blue:data trims.temp.Motion[2] double 0.004 run data get storage blue:data trims.temp.Motion[2] 1000
data modify entity @s Motion set from storage blue:data trims.temp.Motion