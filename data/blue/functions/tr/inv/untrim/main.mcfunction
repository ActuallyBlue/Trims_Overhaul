execute store success score #.temp0 blue.misc if entity @s[advancements={blue:tr/untrim={above=true}}]
advancement revoke @s only blue:tr/untrim
item replace block 200600 2 200600 container.7 from entity @s armor.head
item replace block 200600 2 200600 container.6 from entity @s armor.chest
item replace block 200600 2 200600 container.5 from entity @s armor.legs
item replace block 200600 2 200600 container.4 from entity @s armor.feet
data modify storage blue:trims temp.inventory set from block 200600 2 200600 Items
function blue:tr/inv/untrim/split
execute if score #.temp0 blue.misc matches 1 if score #.temp blue.misc matches 0 run return 0
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s quartz
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s quartz
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s quartz
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:quartz"}}}] run give @s quartz
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s iron_ingot
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s iron_ingot
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s iron_ingot
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:iron"}}}] run give @s iron_ingot
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s gold_ingot
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s gold_ingot
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s gold_ingot
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:gold"}}}] run give @s gold_ingot
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s emerald
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s emerald
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s emerald
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:emerald"}}}] run give @s emerald
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s diamond
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s diamond
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s diamond
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:diamond"}}}] run give @s diamond
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s redstone
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s redstone
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s redstone
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:redstone"}}}] run give @s redstone
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s lapis_lazuli
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s lapis_lazuli
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s lapis_lazuli
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:lapis"}}}] run give @s lapis_lazuli
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s copper_ingot
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s copper_ingot
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s copper_ingot
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:copper"}}}] run give @s copper_ingot
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s ender_eye
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s ender_eye
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s ender_eye
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:ender_eye"}}}] run give @s ender_eye
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s gunpowder
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s gunpowder
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s gunpowder
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:gunpowder"}}}] run give @s gunpowder
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s echo_shard
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s echo_shard
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s echo_shard
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:echo_shard"}}}] run give @s echo_shard
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s nether_star
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s nether_star
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s nether_star
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:nether_star"}}}] run give @s nether_star
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s amethyst_shard
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s amethyst_shard
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s amethyst_shard
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:amethyst"}}}] run give @s amethyst_shard
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s netherite_ingot
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s netherite_ingot
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s netherite_ingot
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:netherite"}}}] run give @s netherite_ingot
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s blaze_powder
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s blaze_powder
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s blaze_powder
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:blaze_powder"}}}] run give @s blaze_powder
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s shulker_shell
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s shulker_shell
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s shulker_shell
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:shulker_shell"}}}] run give @s shulker_shell
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s nautilus_shell
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s nautilus_shell
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s nautilus_shell
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:nautilus_shell"}}}] run give @s nautilus_shell
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s heart_of_the_sea
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s heart_of_the_sea
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s heart_of_the_sea
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{material:"minecraft:heart_of_the_sea"}}}] run give @s heart_of_the_sea
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:dragon_egg"}}}] run give @s dragon_egg
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:dragon_egg"}}}] run give @s dragon_egg
scoreboard players set #.template_loot blue.misc 1
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:eye"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/eye
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:eye"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/eye
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:eye"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/eye
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:eye"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/eye
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:rib"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/rib
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:rib"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/rib
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:rib"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/rib
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:rib"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/rib
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:vex"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/vex
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:vex"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/vex
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:vex"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/vex
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:vex"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/vex
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:tide"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/tide
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:tide"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/tide
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:tide"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/tide
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:tide"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/tide
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:ward"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/ward
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:ward"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/ward
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:ward"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/ward
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:ward"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/ward
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:dune"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/dune
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:dune"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/dune
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:dune"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/dune
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:dune"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/dune
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:wild"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/wild
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:wild"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/wild
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:wild"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/wild
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:wild"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/wild
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:host"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/host
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:host"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/host
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:host"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/host
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:host"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/host
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:spire"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/spire
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:spire"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/spire
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:spire"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/spire
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:spire"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/spire
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:snout"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/snout
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:snout"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/snout
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:snout"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/snout
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:snout"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/snout
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:coast"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/coast
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:coast"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/coast
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:coast"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/coast
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:coast"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/coast
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/shaper
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/shaper
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/shaper
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:shaper"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/shaper
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/sentry
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/sentry
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/sentry
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:sentry"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/sentry
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/raiser
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/raiser
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/raiser
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:raiser"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/raiser
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:silence"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/silence
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:silence"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/silence
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:silence"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/silence
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:silence"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/silence
execute if data storage blue:trims temp.inventory[{Slot:7b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run loot spawn ~ ~0.6 ~ loot blue:tr/wayfinder
execute if data storage blue:trims temp.inventory[{Slot:6b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run loot spawn ~ ~0.5 ~ loot blue:tr/wayfinder
execute if data storage blue:trims temp.inventory[{Slot:5b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run loot spawn ~ ~0.4 ~ loot blue:tr/wayfinder
execute if data storage blue:trims temp.inventory[{Slot:4b,tag:{Trim:{pattern:"minecraft:wayfinder"}}}] run loot spawn ~ ~0.3 ~ loot blue:tr/wayfinder
data remove storage blue:trims temp.inventory
setblock 200600 2 200600 barrel{}