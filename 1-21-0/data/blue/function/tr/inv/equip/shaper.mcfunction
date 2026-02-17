execute if entity @s[tag=blue.tr.shaper] if data storage blue:trims armor{feet:{material:"minecraft:gunpowder"},legs:{material:"minecraft:gunpowder"},chest:{material:"minecraft:gunpowder"},head:{material:"minecraft:gunpowder"}} run function blue:tr/inv/equip/powder
scoreboard players set @s[tag=blue.tr.shaper] blue.tr.current_trim 8
tag @s remove blue.tr.shaper.falling
tag @s add blue.tr.trim.shaper