execute if entity @s[tag=blue.tr.tide] if data storage blue:data trims.armor{feet:{material:"minecraft:heart_of_the_sea"},legs:{material:"minecraft:heart_of_the_sea"},chest:{material:"minecraft:heart_of_the_sea"},head:{material:"minecraft:heart_of_the_sea"}} run function blue:tr/inv/equip/heart
scoreboard players set @s[tag=blue.tr.tide] blue.tr.current_trim 12
tag @s add blue.tr.trim.tide