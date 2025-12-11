execute if data storage blue:trims armor.head{material:"minecraft:quartz"} run give @s minecraft:quartz
execute if data storage blue:trims armor.head{material:"minecraft:iron"} run give @s minecraft:iron_ingot
execute if data storage blue:trims armor.head{material:"minecraft:gold"} run give @s minecraft:gold_ingot
execute if data storage blue:trims armor.head{material:"minecraft:emerald"} run give @s minecraft:emerald
execute if data storage blue:trims armor.head{material:"minecraft:diamond"} run give @s minecraft:diamond
execute if data storage blue:trims armor.head{material:"minecraft:redstone"} run give @s minecraft:redstone
execute if data storage blue:trims armor.head{material:"minecraft:lapis"} run give @s minecraft:lapis_lazuli
execute if data storage blue:trims armor.head{material:"minecraft:copper"} run give @s minecraft:copper_ingot
execute if data storage blue:trims armor.head{material:"minecraft:ender_eye"} run give @s minecraft:ender_eye
execute if data storage blue:trims armor.head{material:"minecraft:gunpowder"} run give @s minecraft:gunpowder
execute if data storage blue:trims armor.head{material:"minecraft:echo_shard"} run give @s minecraft:echo_shard
execute if data storage blue:trims armor.head{material:"minecraft:dragon_egg"} run give @s minecraft:dragon_egg
execute if data storage blue:trims armor.head{material:"minecraft:nether_star"} run give @s minecraft:nether_star
execute if data storage blue:trims armor.head{material:"minecraft:amethyst"} run give @s minecraft:amethyst_shard
execute if data storage blue:trims armor.head{material:"minecraft:netherite"} run give @s minecraft:netherite_ingot
execute if data storage blue:trims armor.head{material:"minecraft:blaze_powder"} run give @s minecraft:blaze_powder
execute if data storage blue:trims armor.head{material:"minecraft:shulker_shell"} run give @s minecraft:shulker_shell
execute if data storage blue:trims armor.head{material:"minecraft:nautilus_shell"} run give @s minecraft:nautilus_shell
execute if data storage blue:trims armor.head{material:"minecraft:heart_of_the_sea"} run give @s minecraft:heart_of_the_sea
item replace block 200600 2 200600 container.3 from entity @s armor.head
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data remove block 200600 2 200600 Items[{Slot:3b}].tag.Trim
item replace entity @s armor.head from block 200600 2 200600 container.3
item replace block 200600 2 200600 container.3 with air
execute if data storage blue:trims armor.head{pattern:"minecraft:eye"} run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:rib"} run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:vex"} run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:tide"} run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:ward"} run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:dune"} run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:wild"} run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:host"} run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:spire"} run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:snout"} run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:coast"} run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:shaper"} run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:sentry"} run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:raiser"} run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:silence"} run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:trims armor.head{pattern:"minecraft:wayfinder"} run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}