execute if items entity @s armor.head *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/head with storage blue:data trims.armor.head
attribute @s knockback_resistance modifier remove blue:tr.head
attribute @s armor_toughness modifier remove blue:tr.head
attribute @s movement_speed modifier remove blue:tr.head
attribute @s attack_damage modifier remove blue:tr.head
attribute @s attack_speed modifier remove blue:tr.head
attribute @s max_health modifier remove blue:tr.head
attribute @s armor modifier remove blue:tr.head
attribute @s luck modifier remove blue:tr.head
tag @s remove blue.tr.head_mat
tag @s[tag=!blue.tr.chest_mat,tag=!blue.tr.legs_mat,tag=!blue.tr.feet_mat] remove blue.tr.indiv_mats