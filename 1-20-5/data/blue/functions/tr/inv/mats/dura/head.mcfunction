execute if data storage blue:data trims.armor.head{material:"minecraft:dragon_egg"} run give @s minecraft:dragon_egg
execute if data storage blue:data trims.armor.head{material:"minecraft:nether_star"} run give @s minecraft:nether_star
execute if data storage blue:data trims.armor.head{material:"minecraft:netherite"} run give @s minecraft:netherite_ingot
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.head blue:remove_trim
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~1.7 ~ 0.22 0.25 0.22 0.02 10
$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]