execute if data storage blue:data trims.armor.legs{material:"minecraft:dragon_egg"} run give @s minecraft:dragon_egg
execute if data storage blue:data trims.armor.legs{material:"minecraft:nether_star"} run give @s minecraft:nether_star
execute if data storage blue:data trims.armor.legs{material:"minecraft:netherite"} run give @s minecraft:netherite_ingot
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.legs blue:shared/remove_trim
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~0.75 ~ 0.2 0.2 0.2 0.02 11
$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]