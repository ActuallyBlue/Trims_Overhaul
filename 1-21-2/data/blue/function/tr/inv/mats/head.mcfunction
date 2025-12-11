tag @s add blue.tr.mats.head
tag @s add blue.tr.mats.pieces
execute if data storage blue:trims armor.head{material:"minecraft:netherite"} run return run function blue:tr/inv/mats/netherite/head
execute if data storage blue:trims armor.head{material:"minecraft:redstone"} run return run attribute @s max_health modifier add blue:tr.head 1.0 add_value
execute if data storage blue:trims armor.head{material:"minecraft:quartz"} run return run attribute @s attack_damage modifier add blue:tr.head 0.3 add_value
execute if data storage blue:trims armor.head{material:"minecraft:lapis"} run return run attribute @s movement_speed modifier add blue:tr.head 0.003 add_value
execute if data storage blue:trims armor.head{material:"minecraft:diamond"} run return run attribute @s armor_toughness modifier add blue:tr.head 0.7 add_value
execute if data storage blue:trims armor.head{material:"minecraft:gold"} run return run attribute @s attack_speed modifier add blue:tr.head 0.04 add_value
execute if data storage blue:trims armor.head{material:"minecraft:iron"} run return run attribute @s armor modifier add blue:tr.head 0.5 add_value
execute if data storage blue:trims armor.head{material:"minecraft:emerald"} run return run attribute @s luck modifier add blue:tr.head 0.5 add_value
execute if data storage blue:trims armor.head{material:"minecraft:copper"} run return run attribute @s knockback_resistance modifier add blue:tr.head 0.02 add_value
execute unless data storage blue:trims armor.head{material:"minecraft:resin"} run return fail
attribute @s water_movement_efficiency modifier add blue:tr.head 0.1 add_value
attribute @s movement_efficiency modifier add blue:tr.head 0.1 add_value