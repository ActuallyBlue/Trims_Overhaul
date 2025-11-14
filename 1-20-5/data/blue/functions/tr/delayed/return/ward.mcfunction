execute if score #.ward_stored blue.misc matches 1 run give @s ward_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]
execute if score #.ward_stored blue.misc matches 2 run give @s ward_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 2
execute if score #.ward_stored blue.misc matches 3 run give @s ward_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 3
execute if score #.ward_stored blue.misc matches 4.. run give @s ward_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true] 4
tellraw @s [{"translate":"Ward","color":"#5C70AE"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
advancement grant @s[advancements={blue:tr/display/guides/protection=false}] only blue:tr/display/guides/protection
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
scoreboard players reset #.ward_stored blue.misc
particle portal ~ ~0.5 ~ 0.05 0.5 0.05 0.3 16