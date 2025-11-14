execute if items entity @s armor.chest *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/chest with storage blue:data trims.armor.chest
attribute @s generic.knockback_resistance modifier remove blue:tr.chest
attribute @s generic.armor_toughness modifier remove blue:tr.chest
attribute @s generic.movement_speed modifier remove blue:tr.chest
attribute @s generic.attack_damage modifier remove blue:tr.chest
attribute @s generic.attack_speed modifier remove blue:tr.chest
attribute @s generic.max_health modifier remove blue:tr.chest
attribute @s generic.armor modifier remove blue:tr.chest
attribute @s generic.luck modifier remove blue:tr.chest
tag @s remove blue.tr.mats.chest
tag @s[tag=!blue.tr.mats.head,tag=!blue.tr.mats.legs,tag=!blue.tr.mats.feet] remove blue.tr.mats.pieces