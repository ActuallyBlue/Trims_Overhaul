execute if predicate blue:tr/legsdura run function blue:tr/inv/mats/dura/legs
attribute @s generic.knockback_resistance modifier remove b163102f-0-1-0-1
attribute @s generic.armor_toughness modifier remove b163102f-0-1-0-1
attribute @s generic.movement_speed modifier remove b163102f-0-1-0-1
attribute @s generic.attack_damage modifier remove b163102f-0-1-0-1
attribute @s generic.attack_speed modifier remove b163102f-0-1-0-1
attribute @s generic.max_health modifier remove b163102f-0-1-0-1
attribute @s generic.armor modifier remove b163102f-0-1-0-1
attribute @s generic.luck modifier remove b163102f-0-1-0-1
tag @s remove blue.tr.legs_mat
tag @s[tag=!blue.tr.head_mat,tag=!blue.tr.chest_mat,tag=!blue.tr.feet_mat] remove blue.tr.indiv_mats