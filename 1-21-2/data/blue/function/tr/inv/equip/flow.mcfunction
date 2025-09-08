attribute @s[tag=blue.tr.flow] gravity modifier add blue:tr.trim -0.03 add_value
attribute @s[tag=blue.tr.flow] safe_fall_distance modifier add blue:tr.trim 4 add_value
attribute @s[tag=blue.tr.flow] fall_damage_multiplier modifier add blue:tr.trim -0.1 add_value
attribute @s[tag=blue.tr.flow] attack_knockback modifier add blue:tr.trim 0.25 add_multiplied_total
execute if entity @s[tag=blue.tr.flow] if data storage blue:data trims.armor{feet:{material:"minecraft:wind_charge"},legs:{material:"minecraft:wind_charge"},chest:{material:"minecraft:wind_charge"},head:{material:"minecraft:wind_charge"}} run function blue:tr/inv/equip/wind
scoreboard players set @s[tag=blue.tr.flow] blue.tr.current_trim 18
tag @s add blue.tr.trim.flow