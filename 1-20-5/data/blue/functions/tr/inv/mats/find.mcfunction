execute if items entity @s armor.* *[damage~{durability:{max:10}},trim] run function blue:tr/inv/mats/dura/any_low
execute if items entity @s armor.* *[trim~{material:"dragon_egg"}] run function blue:tr/inv/mats/has_egg
execute store result score #.temp blue.misc run data get storage blue:data trims.armor
execute if score #.temp blue.misc matches 4 store success score #.valid_slots blue.misc run data modify storage blue:data trims.inventory[].components."minecraft:trim".material set from storage blue:data trims.inventory[-1].components."minecraft:trim".material
execute if score #.valid_slots blue.misc matches 0 store success score #.valid_slots blue.misc run return 1
attribute @s generic.knockback_resistance modifier remove b163102f-0-4-0-1
attribute @s generic.armor_toughness modifier remove b163102f-0-4-0-1
attribute @s generic.movement_speed modifier remove b163102f-0-4-0-1
attribute @s generic.attack_damage modifier remove b163102f-0-4-0-1
attribute @s generic.attack_speed modifier remove b163102f-0-4-0-1
attribute @s generic.max_health modifier remove b163102f-0-4-0-1
attribute @s generic.armor modifier remove b163102f-0-4-0-1
attribute @s generic.luck modifier remove b163102f-0-4-0-1
tag @s[tag=blue.tr.mats.amethyst] remove blue.tr.mats.amethyst
tag @s remove blue.tr.mats.set