execute if items entity @s armor.feet *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/feet with storage blue:trims armor.feet
attribute @s generic.knockback_resistance modifier remove b163102f-0-0-0-1
attribute @s generic.armor_toughness modifier remove b163102f-0-0-0-1
attribute @s generic.movement_speed modifier remove b163102f-0-0-0-1
attribute @s generic.attack_damage modifier remove b163102f-0-0-0-1
attribute @s generic.attack_speed modifier remove b163102f-0-0-0-1
attribute @s generic.max_health modifier remove b163102f-0-0-0-1
attribute @s generic.armor modifier remove b163102f-0-0-0-1
attribute @s generic.luck modifier remove b163102f-0-0-0-1
tag @s remove blue.tr.mats.feet
tag @s[tag=!blue.tr.mats.head,tag=!blue.tr.mats.chest,tag=!blue.tr.mats.legs] remove blue.tr.mats.pieces