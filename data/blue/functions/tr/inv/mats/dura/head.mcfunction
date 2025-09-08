execute if data storage blue:data trims.armor.head{material:"minecraft:dragon_egg"} run give @s minecraft:dragon_egg
execute if data storage blue:data trims.armor.head{material:"minecraft:nether_star"} run give @s minecraft:nether_star
execute if data storage blue:data trims.armor.head{material:"minecraft:netherite"} run give @s minecraft:netherite_ingot
item replace block 200600 2 200600 container.3 from entity @s armor.head
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data remove block 200600 2 200600 Items[{Slot:3b}].tag.Trim
item replace entity @s armor.head from block 200600 2 200600 container.3
item replace block 200600 2 200600 container.3 with air
execute if data storage blue:data trims.armor.head{pattern:"minecraft:eye"} run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:rib"} run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:vex"} run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:tide"} run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:ward"} run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:dune"} run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:wild"} run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:host"} run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:spire"} run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:snout"} run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:coast"} run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:shaper"} run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:sentry"} run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:raiser"} run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:silence"} run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.armor.head{pattern:"minecraft:wayfinder"} run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}