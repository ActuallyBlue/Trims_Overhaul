execute if items entity @s armor.legs *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/legs with storage blue:trims armor.legs
attribute @s knockback_resistance modifier remove blue:tr.legs
attribute @s armor_toughness modifier remove blue:tr.legs
attribute @s movement_speed modifier remove blue:tr.legs
attribute @s attack_damage modifier remove blue:tr.legs
attribute @s attack_speed modifier remove blue:tr.legs
attribute @s max_health modifier remove blue:tr.legs
attribute @s armor modifier remove blue:tr.legs
attribute @s luck modifier remove blue:tr.legs
tag @s remove blue.tr.mats.legs
tag @s[tag=!blue.tr.mats.head,tag=!blue.tr.mats.chest,tag=!blue.tr.mats.feet] remove blue.tr.mats.pieces