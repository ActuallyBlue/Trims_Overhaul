execute if entity @s[tag=blue.tr.silence] if data storage blue:data trims.armor{feet:{material:"minecraft:echo_shard"},legs:{material:"minecraft:echo_shard"},chest:{material:"minecraft:echo_shard"},head:{material:"minecraft:echo_shard"}} run function blue:tr/inv/equip/shard
scoreboard players set @s[tag=blue.tr.silence] blue.tr.current_trim 9
tag @s add blue.tr.trim.silence