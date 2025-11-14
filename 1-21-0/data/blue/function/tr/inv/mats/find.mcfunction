tag @s[tag=blue.tr.dragon_egg] remove blue.tr.dragon_egg
execute if items entity @s armor.* *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/any_low
execute store result score #.temp blue.misc run data get storage blue:data trims.armor
execute if data storage blue:data trims.inventory[].components."minecraft:trim"{material:"minecraft:dragon_egg"} run function blue:tr/inv/mats/has_egg
execute if score #.temp blue.misc matches 4 store result score #.valid_slots blue.misc run data modify storage blue:data trims.inventory[].components."minecraft:trim".material set from storage blue:data trims.inventory[-1].components."minecraft:trim".material
execute if score #.valid_slots blue.misc matches 0 store result score #.valid_slots blue.misc run return 2
execute if score #.valid_slots blue.misc matches 1 if data storage blue:data trims.armor{has_egg:1b} store result score #.valid_slots blue.misc run return 2
attribute @s generic.knockback_resistance modifier remove blue:tr.set
attribute @s generic.armor_toughness modifier remove blue:tr.set
attribute @s generic.movement_speed modifier remove blue:tr.set
attribute @s generic.attack_damage modifier remove blue:tr.set
attribute @s generic.attack_speed modifier remove blue:tr.set
attribute @s generic.max_health modifier remove blue:tr.set
attribute @s generic.armor modifier remove blue:tr.set
attribute @s generic.luck modifier remove blue:tr.set
tag @s[tag=blue.tr.mats.amethyst] remove blue.tr.mats.amethyst
tag @s[tag=blue.tr.mats.gold] remove blue.tr.mats.gold
tag @s remove blue.tr.mats.set