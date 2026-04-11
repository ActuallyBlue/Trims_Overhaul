execute if data storage blue:trims armor.chest{material:"minecraft:quartz"} run give @s quartz
execute if data storage blue:trims armor.chest{material:"minecraft:iron"} run give @s iron_ingot
execute if data storage blue:trims armor.chest{material:"minecraft:gold"} run give @s gold_ingot
execute if data storage blue:trims armor.chest{material:"minecraft:emerald"} run give @s emerald
execute if data storage blue:trims armor.chest{material:"minecraft:diamond"} run give @s diamond
execute if data storage blue:trims armor.chest{material:"minecraft:redstone"} run give @s redstone
execute if data storage blue:trims armor.chest{material:"minecraft:lapis"} run give @s lapis_lazuli
execute if data storage blue:trims armor.chest{material:"minecraft:copper"} run give @s copper_ingot
execute if data storage blue:trims armor.chest{material:"minecraft:ender_eye"} run give @s ender_eye
execute if data storage blue:trims armor.chest{material:"minecraft:gunpowder"} run give @s gunpowder
execute if data storage blue:trims armor.chest{material:"minecraft:echo_shard"} run give @s echo_shard
execute if data storage blue:trims armor.chest{material:"minecraft:dragon_egg"} run give @s dragon_egg
execute if data storage blue:trims armor.chest{material:"minecraft:nether_star"} run give @s nether_star
execute if data storage blue:trims armor.chest{material:"minecraft:amethyst"} run give @s amethyst_shard
execute if data storage blue:trims armor.chest{material:"minecraft:netherite"} run give @s netherite_ingot
execute if data storage blue:trims armor.chest{material:"minecraft:blaze_powder"} run give @s blaze_powder
execute if data storage blue:trims armor.chest{material:"minecraft:shulker_shell"} run give @s shulker_shell
execute if data storage blue:trims armor.chest{material:"minecraft:nautilus_shell"} run give @s nautilus_shell
execute if data storage blue:trims armor.chest{material:"minecraft:heart_of_the_sea"} run give @s heart_of_the_sea
item replace block 200600 2 200600 container.3 from entity @s armor.chest
playsound item.armor.equip_chain player @s ~ ~ ~ 1 0.6
data remove block 200600 2 200600 Items[{Slot:3b}].tag.Trim
data remove block 200600 2 200600 Items[{Slot:3b}].components."minecraft:trim"
item replace entity @s armor.chest from block 200600 2 200600 container.3
item replace block 200600 2 200600 container.3 with air
execute if data storage blue:trims armor.chest{pattern:"minecraft:dragon_egg"} run give @s dragon_egg
scoreboard players set #.template_loot blue.misc 1
execute if data storage blue:trims armor.chest{pattern:"minecraft:eye"} run loot spawn ~ ~0.5 ~ loot blue:tr/eye
execute if data storage blue:trims armor.chest{pattern:"minecraft:rib"} run loot spawn ~ ~0.5 ~ loot blue:tr/rib
execute if data storage blue:trims armor.chest{pattern:"minecraft:vex"} run loot spawn ~ ~0.5 ~ loot blue:tr/vex
execute if data storage blue:trims armor.chest{pattern:"minecraft:tide"} run loot spawn ~ ~0.5 ~ loot blue:tr/tide
execute if data storage blue:trims armor.chest{pattern:"minecraft:ward"} run loot spawn ~ ~0.5 ~ loot blue:tr/ward
execute if data storage blue:trims armor.chest{pattern:"minecraft:dune"} run loot spawn ~ ~0.5 ~ loot blue:tr/dune
execute if data storage blue:trims armor.chest{pattern:"minecraft:wild"} run loot spawn ~ ~0.5 ~ loot blue:tr/wild
execute if data storage blue:trims armor.chest{pattern:"minecraft:host"} run loot spawn ~ ~0.5 ~ loot blue:tr/host
execute if data storage blue:trims armor.chest{pattern:"minecraft:spire"} run loot spawn ~ ~0.5 ~ loot blue:tr/spire
execute if data storage blue:trims armor.chest{pattern:"minecraft:snout"} run loot spawn ~ ~0.5 ~ loot blue:tr/snout
execute if data storage blue:trims armor.chest{pattern:"minecraft:coast"} run loot spawn ~ ~0.5 ~ loot blue:tr/coast
execute if data storage blue:trims armor.chest{pattern:"minecraft:shaper"} run loot spawn ~ ~0.5 ~ loot blue:tr/shaper
execute if data storage blue:trims armor.chest{pattern:"minecraft:sentry"} run loot spawn ~ ~0.5 ~ loot blue:tr/sentry
execute if data storage blue:trims armor.chest{pattern:"minecraft:raiser"} run loot spawn ~ ~0.5 ~ loot blue:tr/raiser
execute if data storage blue:trims armor.chest{pattern:"minecraft:silence"} run loot spawn ~ ~0.5 ~ loot blue:tr/silence
execute if data storage blue:trims armor.chest{pattern:"minecraft:wayfinder"} run loot spawn ~ ~0.5 ~ loot blue:tr/wayfinder