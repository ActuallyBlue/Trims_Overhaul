execute if items entity @s armor.head *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/head with storage blue:trims armor.head
attribute @s knockback_resistance modifier remove blue:tr.head
attribute @s armor_toughness modifier remove blue:tr.head
attribute @s movement_speed modifier remove blue:tr.head
attribute @s attack_damage modifier remove blue:tr.head
attribute @s attack_speed modifier remove blue:tr.head
attribute @s max_health modifier remove blue:tr.head
attribute @s armor modifier remove blue:tr.head
attribute @s luck modifier remove blue:tr.head
tag @s remove blue.tr.mats.head
tag @s[tag=!blue.tr.mats.chest,tag=!blue.tr.mats.legs,tag=!blue.tr.mats.feet] remove blue.tr.mats.pieces