$execute if score #.$(trim)_stored blue.misc matches 1 run give @s $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]]
$execute if score #.$(trim)_stored blue.misc matches 2 run give @s $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 2
$execute if score #.$(trim)_stored blue.misc matches 3 run give @s $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 3
$execute if score #.$(trim)_stored blue.misc matches 4.. run give @s $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 4
$tellraw @s [{"translate":"$(translate)","color":"$(color)"},{"translate":"blue.tr.returned","fallback":" template(s) have been returned to you","color":"gray"}]
playsound entity.enderman.teleport player @s ~ ~-2 ~ 0.8 0.75
$scoreboard players reset #.$(trim)_stored blue.misc
particle portal ~ ~1 ~ 0.05 0 0.05 0.1 32