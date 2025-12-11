execute if data storage blue:trims armor.feet{material:"minecraft:quartz"} run give @s minecraft:quartz
execute if data storage blue:trims armor.feet{material:"minecraft:iron"} run give @s minecraft:iron_ingot
execute if data storage blue:trims armor.feet{material:"minecraft:gold"} run give @s minecraft:gold_ingot
execute if data storage blue:trims armor.feet{material:"minecraft:emerald"} run give @s minecraft:emerald
execute if data storage blue:trims armor.feet{material:"minecraft:diamond"} run give @s minecraft:diamond
execute if data storage blue:trims armor.feet{material:"minecraft:redstone"} run give @s minecraft:redstone
execute if data storage blue:trims armor.feet{material:"minecraft:lapis"} run give @s minecraft:lapis_lazuli
execute if data storage blue:trims armor.feet{material:"minecraft:copper"} run give @s minecraft:copper_ingot
execute if data storage blue:trims armor.feet{material:"minecraft:ender_eye"} run give @s minecraft:ender_eye
execute if data storage blue:trims armor.feet{material:"minecraft:gunpowder"} run give @s minecraft:gunpowder
execute if data storage blue:trims armor.feet{material:"minecraft:echo_shard"} run give @s minecraft:echo_shard
execute if data storage blue:trims armor.feet{material:"minecraft:dragon_egg"} run give @s minecraft:dragon_egg
execute if data storage blue:trims armor.feet{material:"minecraft:nether_star"} run give @s minecraft:nether_star
execute if data storage blue:trims armor.feet{material:"minecraft:amethyst"} run give @s minecraft:amethyst_shard
execute if data storage blue:trims armor.feet{material:"minecraft:netherite"} run give @s minecraft:netherite_ingot
execute if data storage blue:trims armor.feet{material:"minecraft:blaze_powder"} run give @s minecraft:blaze_powder
execute if data storage blue:trims armor.feet{material:"minecraft:shulker_shell"} run give @s minecraft:shulker_shell
execute if data storage blue:trims armor.feet{material:"minecraft:nautilus_shell"} run give @s minecraft:nautilus_shell
execute if data storage blue:trims armor.feet{material:"minecraft:heart_of_the_sea"} run give @s minecraft:heart_of_the_sea
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
item modify entity @s armor.feet blue:shared/remove_trim
$particle item{item:"$(pattern)_armor_trim_smithing_template"} ~ ~0.25 ~ 0.2 0.2 0.2 0.02 8
$give @s $(pattern)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true]