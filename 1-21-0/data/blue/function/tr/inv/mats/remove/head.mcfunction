execute if items entity @s armor.head *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/head with storage blue:data trims.armor.head
attribute @s generic.knockback_resistance modifier remove blue:tr.head
attribute @s generic.armor_toughness modifier remove blue:tr.head
attribute @s generic.movement_speed modifier remove blue:tr.head
attribute @s generic.attack_damage modifier remove blue:tr.head
attribute @s generic.attack_speed modifier remove blue:tr.head
attribute @s generic.max_health modifier remove blue:tr.head
attribute @s generic.armor modifier remove blue:tr.head
attribute @s generic.luck modifier remove blue:tr.head
tag @s remove blue.tr.mats.head
tag @s[tag=!blue.tr.mats.chest,tag=!blue.tr.mats.legs,tag=!blue.tr.mats.feet] remove blue.tr.mats.pieces