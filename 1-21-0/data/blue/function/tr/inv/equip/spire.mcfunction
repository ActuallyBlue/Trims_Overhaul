execute if entity @s[tag=blue.tr.spire] if data storage blue:trims armor{feet:{material:"minecraft:shulker_shell"},legs:{material:"minecraft:shulker_shell"},chest:{material:"minecraft:shulker_shell"},head:{material:"minecraft:shulker_shell"}} run function blue:tr/inv/equip/shulker
scoreboard players set @s[tag=blue.tr.spire] blue.tr.current_trim 11
tag @s add blue.tr.trim.spire