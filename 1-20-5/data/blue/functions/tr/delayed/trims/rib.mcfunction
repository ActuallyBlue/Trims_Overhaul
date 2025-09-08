execute if score #.rib_stored blue.misc matches 1 run give @s rib_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]
execute if score #.rib_stored blue.misc matches 2 run give @s rib_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 2
execute if score #.rib_stored blue.misc matches 3 run give @s rib_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 3
execute if score #.rib_stored blue.misc matches 4.. run give @s rib_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 4
tellraw @s [{"translate":"Rib","color":"#E6484B"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.rib_stored blue.misc
particle portal ~ ~1 ~ 0.05 0 0.05 0.1 32