execute if entity @s[tag=blue.tr.eye] if data storage blue:trims armor{feet:{material:"minecraft:ender_eye"},legs:{material:"minecraft:ender_eye"},chest:{material:"minecraft:ender_eye"},head:{material:"minecraft:ender_eye"}} run function blue:tr/inv/equip/ender_eye
scoreboard players set @s[tag=blue.tr.eye] blue.tr.current_trim 3
tag @s add blue.tr.trim.eye