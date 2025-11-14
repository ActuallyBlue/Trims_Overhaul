tag @s add blue.tr.mats.feet
tag @s add blue.tr.mats.pieces
execute if data storage blue:data trims.armor.feet{material:"minecraft:netherite"} run function blue:tr/inv/mats/netherite/feet
execute if data storage blue:data trims.armor.feet{material:"minecraft:redstone"} run attribute @s generic.max_health modifier add b163102f-0-0-0-1 "blue:tr.feet" 1.0 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:quartz"} run attribute @s generic.attack_damage modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.3 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:lapis"} run attribute @s generic.movement_speed modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.003 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:diamond"} run attribute @s generic.armor_toughness modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.7 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:gold"} run attribute @s generic.attack_speed modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.04 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:iron"} run attribute @s generic.armor modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.5 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:emerald"} run attribute @s generic.luck modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.5 add
execute if data storage blue:data trims.armor.feet{material:"minecraft:copper"} run attribute @s generic.knockback_resistance modifier add b163102f-0-0-0-1 "blue:tr.feet" 0.02 add