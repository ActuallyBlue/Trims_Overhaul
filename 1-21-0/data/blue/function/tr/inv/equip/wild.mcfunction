execute if entity @s[tag=blue.tr.wild] if data storage blue:data trims.armor{feet:{material:"minecraft:nautilus_shell"},legs:{material:"minecraft:nautilus_shell"},chest:{material:"minecraft:nautilus_shell"},head:{material:"minecraft:nautilus_shell"}} run function blue:tr/inv/equip/nautilus
scoreboard players set @s[tag=blue.tr.wild] blue.tr.current_trim 16
tag @s add blue.tr.trim.wild