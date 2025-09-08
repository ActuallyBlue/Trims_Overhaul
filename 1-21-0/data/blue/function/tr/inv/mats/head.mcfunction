tag @s add blue.tr.head_mat
tag @s add blue.tr.indiv_mats
execute if data storage blue:data trims.armor.head{material:"minecraft:netherite"} run return run function blue:tr/inv/mats/netherite/head
execute if data storage blue:data trims.armor.head{material:"minecraft:redstone"} run return run attribute @s generic.max_health modifier add blue:tr.head 1.0 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:quartz"} run return run attribute @s generic.attack_damage modifier add blue:tr.head 0.3 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:lapis"} run return run attribute @s generic.movement_speed modifier add blue:tr.head 0.003 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:diamond"} run return run attribute @s generic.armor_toughness modifier add blue:tr.head 0.7 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:gold"} run return run attribute @s generic.attack_speed modifier add blue:tr.head 0.04 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:iron"} run return run attribute @s generic.armor modifier add blue:tr.head 0.5 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:emerald"} run return run attribute @s generic.luck modifier add blue:tr.head 0.5 add_value
execute if data storage blue:data trims.armor.head{material:"minecraft:copper"} run attribute @s generic.knockback_resistance modifier add blue:tr.head 0.02 add_value