tag @s add blue.tr.mats.head
tag @s add blue.tr.mats.pieces
execute if data storage blue:data trims.armor.head{material:"minecraft:netherite"} run function blue:tr/inv/mats/netherite/head
execute if data storage blue:data trims.armor.head{material:"minecraft:redstone"} run attribute @s generic.max_health modifier add b163102f-0-3-0-1 "blue:tr.head" 1.0 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:quartz"} run attribute @s generic.attack_damage modifier add b163102f-0-3-0-1 "blue:tr.head" 0.3 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:lapis"} run attribute @s generic.movement_speed modifier add b163102f-0-3-0-1 "blue:tr.head" 0.003 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:diamond"} run attribute @s generic.armor_toughness modifier add b163102f-0-3-0-1 "blue:tr.head" 0.7 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:gold"} run attribute @s generic.attack_speed modifier add b163102f-0-3-0-1 "blue:tr.head" 0.04 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:iron"} run attribute @s generic.armor modifier add b163102f-0-3-0-1 "blue:tr.head" 0.5 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:emerald"} run attribute @s generic.luck modifier add b163102f-0-3-0-1 "blue:tr.head" 0.5 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:copper"} run attribute @s generic.knockback_resistance modifier add b163102f-0-3-0-1 "blue:tr.head" 0.02 add_value