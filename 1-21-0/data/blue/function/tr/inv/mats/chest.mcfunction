tag @s add blue.tr.mats.chest
tag @s add blue.tr.mats.pieces
execute if data storage blue:trims armor.chest{material:"minecraft:netherite"} run attribute @s generic.armor_toughness modifier add blue:tr.chest 0.55 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:netherite"} run return run attribute @s generic.armor modifier add blue:tr.chest 0.35 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:redstone"} run return run attribute @s generic.max_health modifier add blue:tr.chest 0.6 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:quartz"} run return run attribute @s generic.attack_damage modifier add blue:tr.chest 0.3 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:lapis"} run return run attribute @s generic.movement_speed modifier add blue:tr.chest 0.0025 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:diamond"} run return run attribute @s generic.armor_toughness modifier add blue:tr.chest 0.7 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:gold"} run return run attribute @s generic.attack_speed modifier add blue:tr.chest 0.04 add_multiplied_total
execute if data storage blue:trims armor.chest{material:"minecraft:iron"} run return run attribute @s generic.armor modifier add blue:tr.chest 0.5 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:emerald"} run return run attribute @s generic.luck modifier add blue:tr.chest 0.5 add_value
execute if data storage blue:trims armor.chest{material:"minecraft:copper"} run attribute @s generic.knockback_resistance modifier add blue:tr.chest 0.02 add_value