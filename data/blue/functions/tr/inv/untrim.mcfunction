advancement revoke @s only blue:tr/untrim req
execute anchored eyes rotated ~ 0 if block ^ ^ ^0.5 smithing_table run fill ^ ^ ^0.5 ^ ^ ^0.5 air destroy
execute anchored eyes rotated ~ 0 unless block ^ ^ ^0.5 smithing_table if block ^ ^ ^1.5 smithing_table run fill ^ ^ ^1.5 ^ ^ ^1.5 air destroy
execute if score #.tr.manual_untrimming blue.config matches 0 run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.manual_untrimming","fallback":"Manual Untrimming","color":"white","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.manual_untrimming_hover","fallback":"If players can un-trim their armor with smithing tables (ON, OFF)","color":"gray"}},"italic":true},{"translate":"blue.tr.is_disabled","fallback":" is disabled on this server","color":"gray"}]
execute if score #.tr.manual_untrimming blue.config matches 0 run return 0
item replace block 200600 2 200600 container.7 from entity @s armor.head
item replace block 200600 2 200600 container.6 from entity @s armor.chest
item replace block 200600 2 200600 container.5 from entity @s armor.legs
item replace block 200600 2 200600 container.4 from entity @s armor.feet
data modify storage blue:data trims.temp.inventory set from block 200600 2 200600 Items
execute if data storage blue:data trims.temp.inventory[].tag.Trim run playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data remove block 200600 2 200600 Items[].tag.Trim
item replace entity @s armor.head from block 200600 2 200600 container.7
item replace entity @s armor.chest from block 200600 2 200600 container.6
item replace entity @s armor.legs from block 200600 2 200600 container.5
item replace entity @s armor.feet from block 200600 2 200600 container.4
setblock 200600 2 200600 barrel{}
execute unless data storage blue:data trims.temp.inventory[].tag.Trim run return 0
particle item sculk_vein ~ ~1.3 ~ 0.24 0.4 0.24 0.05 32
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s minecraft:quartz
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s minecraft:quartz
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s minecraft:quartz
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s minecraft:quartz
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s minecraft:iron_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s minecraft:iron_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s minecraft:iron_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s minecraft:iron_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s minecraft:gold_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s minecraft:gold_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s minecraft:gold_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s minecraft:gold_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s minecraft:emerald
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s minecraft:emerald
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s minecraft:emerald
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s minecraft:emerald
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s minecraft:diamond
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s minecraft:diamond
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s minecraft:diamond
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s minecraft:diamond
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s minecraft:redstone
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s minecraft:redstone
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s minecraft:redstone
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s minecraft:redstone
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s minecraft:lapis_lazuli
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s minecraft:lapis_lazuli
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s minecraft:lapis_lazuli
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s minecraft:lapis_lazuli
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s minecraft:copper_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s minecraft:copper_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s minecraft:copper_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s minecraft:copper_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s minecraft:ender_eye
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s minecraft:ender_eye
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s minecraft:ender_eye
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s minecraft:ender_eye
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s minecraft:gunpowder
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s minecraft:gunpowder
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s minecraft:gunpowder
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s minecraft:gunpowder
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s minecraft:echo_shard
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s minecraft:echo_shard
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s minecraft:echo_shard
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s minecraft:echo_shard
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s minecraft:dragon_egg
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s minecraft:dragon_egg
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s minecraft:dragon_egg
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s minecraft:dragon_egg
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s minecraft:nether_star
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s minecraft:nether_star
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s minecraft:nether_star
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s minecraft:nether_star
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s minecraft:amethyst_shard
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s minecraft:amethyst_shard
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s minecraft:amethyst_shard
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s minecraft:amethyst_shard
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s minecraft:netherite_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s minecraft:netherite_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s minecraft:netherite_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s minecraft:netherite_ingot
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s minecraft:blaze_powder
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s minecraft:blaze_powder
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s minecraft:blaze_powder
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s minecraft:blaze_powder
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s minecraft:shulker_shell
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s minecraft:shulker_shell
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s minecraft:shulker_shell
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s minecraft:shulker_shell
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s minecraft:nautilus_shell
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s minecraft:nautilus_shell
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s minecraft:nautilus_shell
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s minecraft:nautilus_shell
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s minecraft:heart_of_the_sea
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s minecraft:heart_of_the_sea
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s minecraft:heart_of_the_sea
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s minecraft:heart_of_the_sea
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:eye"}}}] run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:eye"}}}] run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:eye"}}}] run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:eye"}}}] run give @s eye_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:rib"}}}] run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:rib"}}}] run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:rib"}}}] run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:rib"}}}] run give @s rib_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:vex"}}}] run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:vex"}}}] run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:vex"}}}] run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:vex"}}}] run give @s vex_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:tide"}}}] run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:tide"}}}] run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:tide"}}}] run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:tide"}}}] run give @s tide_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:ward"}}}] run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:ward"}}}] run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:ward"}}}] run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:ward"}}}] run give @s ward_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:dune"}}}] run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:dune"}}}] run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:dune"}}}] run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:dune"}}}] run give @s dune_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:wild"}}}] run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:wild"}}}] run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:wild"}}}] run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:wild"}}}] run give @s wild_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:host"}}}] run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:host"}}}] run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:host"}}}] run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:host"}}}] run give @s host_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:spire"}}}] run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:spire"}}}] run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:spire"}}}] run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:spire"}}}] run give @s spire_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:snout"}}}] run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:snout"}}}] run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:snout"}}}] run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:snout"}}}] run give @s snout_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:coast"}}}] run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:coast"}}}] run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:coast"}}}] run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:coast"}}}] run give @s coast_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run give @s shaper_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run give @s sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run give @s raiser_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:silence"}}}] run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:silence"}}}] run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:silence"}}}] run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:silence"}}}] run give @s silence_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if data storage blue:data trims.temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run give @s wayfinder_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
data remove storage blue:data trims.temp.inventory
setblock 200600 2 200600 barrel{}