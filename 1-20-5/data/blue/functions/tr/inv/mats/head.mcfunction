tag @s add blue.tr.mats.head
tag @s add blue.tr.mats.pieces
execute if data storage blue:trims armor.head{material:"minecraft:netherite"} run attribute @s generic.armor_toughness modifier add b163102f-0-3-0-1 "blue:tr.head" 0.55 add_value
execute if data storage blue:trims armor.head{material:"minecraft:netherite"} run return run attribute @s generic.armor modifier add b163102f-0-3-0-1 "blue:tr.head" 0.35 add_value
execute if data storage blue:trims armor.head{material:"minecraft:redstone"} run return run attribute @s generic.max_health modifier add b163102f-0-3-0-1 "blue:tr.head" 0.6 add_value
execute if data storage blue:trims armor.head{material:"minecraft:quartz"} run return run attribute @s generic.attack_damage modifier add b163102f-0-3-0-1 "blue:tr.head" 0.3 add_value
execute if data storage blue:trims armor.head{material:"minecraft:lapis"} run return run attribute @s generic.movement_speed modifier add b163102f-0-3-0-1 "blue:tr.head" 0.0025 add_value
execute if data storage blue:trims armor.head{material:"minecraft:diamond"} run return run attribute @s generic.armor_toughness modifier add b163102f-0-3-0-1 "blue:tr.head" 0.7 add_value
execute if data storage blue:trims armor.head{material:"minecraft:gold"} run return run attribute @s generic.attack_speed modifier add b163102f-0-3-0-1 "blue:tr.head" 0.04 add_multiplied_total
execute if data storage blue:trims armor.head{material:"minecraft:iron"} run return run attribute @s generic.armor modifier add b163102f-0-3-0-1 "blue:tr.head" 0.5 add_value
execute if data storage blue:trims armor.head{material:"minecraft:emerald"} run return run attribute @s generic.luck modifier add b163102f-0-3-0-1 "blue:tr.head" 0.5 add_value
execute if data storage blue:trims armor.head{material:"minecraft:copper"} run attribute @s generic.knockback_resistance modifier add b163102f-0-3-0-1 "blue:tr.head" 0.02 add_value