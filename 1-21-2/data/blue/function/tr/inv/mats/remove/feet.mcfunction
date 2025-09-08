execute if items entity @s armor.feet *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/feet with storage blue:data trims.armor.feet
attribute @s knockback_resistance modifier remove blue:tr.feet
attribute @s armor_toughness modifier remove blue:tr.feet
attribute @s movement_speed modifier remove blue:tr.feet
attribute @s attack_damage modifier remove blue:tr.feet
attribute @s attack_speed modifier remove blue:tr.feet
attribute @s max_health modifier remove blue:tr.feet
attribute @s armor modifier remove blue:tr.feet
attribute @s luck modifier remove blue:tr.feet
tag @s remove blue.tr.feet_mat
tag @s[tag=!blue.tr.head_mat,tag=!blue.tr.chest_mat,tag=!blue.tr.legs_mat] remove blue.tr.indiv_mats