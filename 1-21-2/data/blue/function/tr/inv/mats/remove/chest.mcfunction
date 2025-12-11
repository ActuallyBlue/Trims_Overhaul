execute if items entity @s armor.chest *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/chest with storage blue:trims armor.chest
attribute @s knockback_resistance modifier remove blue:tr.chest
attribute @s armor_toughness modifier remove blue:tr.chest
attribute @s movement_speed modifier remove blue:tr.chest
attribute @s attack_damage modifier remove blue:tr.chest
attribute @s attack_speed modifier remove blue:tr.chest
attribute @s max_health modifier remove blue:tr.chest
attribute @s armor modifier remove blue:tr.chest
attribute @s luck modifier remove blue:tr.chest
tag @s remove blue.tr.mats.chest
tag @s[tag=!blue.tr.mats.head,tag=!blue.tr.mats.legs,tag=!blue.tr.mats.feet] remove blue.tr.mats.pieces