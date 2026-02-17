tag @s add blue.tr.mats.feet
tag @s add blue.tr.mats.pieces
execute if data storage blue:trims armor.feet{material:"minecraft:netherite"} run attribute @s armor_toughness modifier add blue:tr.feet 0.55 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:netherite"} run return run attribute @s armor modifier add blue:tr.feet 0.35 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:redstone"} run return run attribute @s max_health modifier add blue:tr.feet 0.6 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:quartz"} run return run attribute @s attack_damage modifier add blue:tr.feet 0.3 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:lapis"} run return run attribute @s movement_speed modifier add blue:tr.feet 0.0025 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:diamond"} run return run attribute @s armor_toughness modifier add blue:tr.feet 0.7 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:gold"} run return run attribute @s attack_speed modifier add blue:tr.feet 0.04 add_multiplied_total
execute if data storage blue:trims armor.feet{material:"minecraft:iron"} run return run attribute @s armor modifier add blue:tr.feet 0.5 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:emerald"} run return run attribute @s luck modifier add blue:tr.feet 0.5 add_value
execute if data storage blue:trims armor.feet{material:"minecraft:copper"} run return run attribute @s knockback_resistance modifier add blue:tr.feet 0.02 add_value
execute unless data storage blue:trims armor.feet{material:"minecraft:resin"} run return fail
attribute @s water_movement_efficiency modifier add blue:tr.feet 0.05 add_value
attribute @s movement_efficiency modifier add blue:tr.feet 0.05 add_value
attribute @s sneaking_speed modifier add blue:tr.feet 0.05 add_value