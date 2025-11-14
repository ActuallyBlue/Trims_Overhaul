scoreboard objectives add Set_Trim trigger
scoreboard players reset #st blue.misc
scoreboard players operation #st blue.misc = @s Set_Trim
execute unless score #st blue.misc matches 1.. if entity @s store success score enabled Set_Trim run schedule clear blue:tr/debug/z/toggle_test_world
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run tellraw @a [{"text":"\n'/trigger Set_Trim'","color":"white","clickEvent":{"action":"run_command","value":"/trigger Set_Trim"}},{"translate":"blue.tr.test_world_guide","fallback":" to change trims and give yourself items","color":"gray"}]
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run tellraw @s [{"translate":"blue.tr.test_world_warn","fallback":"Also ask yourself: \"Is this world important?\" before using this. If the answer is yes, run this function again.\n"}]
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run team add blue.tr.silence
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run team add blue.tr.rib
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.mined_sand mined:sand
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.fear dummy
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.damage_blocked custom:damage_blocked_by_shield
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run return run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 1 run return run scoreboard objectives remove Set_Trim
execute unless score #st blue.misc matches 1.. unless entity @s run scoreboard players enable @a Set_Trim
execute unless score #st blue.misc matches 1.. unless entity @s run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. unless entity @s run return run execute as @a[scores={Set_Trim=1..}] at @s run function blue:tr/debug/z/toggle_test_world
execute unless entity @s[advancements={blue:tr/tags={tutorial_barrage=true,tutorial_piercer=true,tutorial_vortex=true,tutorial_resource_pack=true,tutorial_pickup_trim=true,tutorial_new_player=true,tutorial_creative=true,tutorial_transfer=true}}] run function blue:tr/delayed/cmd/toggle_tutorials
tag @s add blue.tr.ignore_first
scoreboard players reset @s Set_Trim
scoreboard players enable @s Set_Trim
execute if score #st blue.misc matches ..1 run return run tellraw @s [{"translate":"Wayfinder","color":"#F1FFC8","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 2"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Silence","color":"#3842Cf","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 3"}},"\n",{"translate":"Shaper","color":"#8F8F8F","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 4"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Sentry","color":"#4B885B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 5"}},"\n",{"translate":"Raiser","color":"#95B623","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 6"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Coast","color":"#C1C888","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 7"}},"\n",{"translate":"Snout","color":"#F2B01A","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 8"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Spire","color":"#BE20C7","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 9"}},"\n",{"translate":"Dune","color":"#E7C547","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 10"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Ward","color":"#5C70AE","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 11"}},"\n",{"translate":"Host","color":"#A34646","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 12"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Tide","color":"#199ADD","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 14"}},"\n",{"translate":"Eye","color":"#1F8A46","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 16"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 17"}},"\n",{"translate":"Wild","color":"#00D529","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 18"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Rib","color":"#E6484B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 19"}}]
clear
give @s skeleton_spawn_egg
give @s zombie_spawn_egg
advancement grant @s only blue:tr/inv_checks
function blue:tr/inv/unequip/attributes
scoreboard players set @s blue.tr.current_trim 0
tag @s remove blue.tr.mats.amethyst
tag @s remove blue.tr.mats.blaze
tag @s remove blue.tr.mats.eye
tag @s remove blue.tr.mats.gold
tag @s remove blue.tr.mats.heart
tag @s remove blue.tr.mats.naut
tag @s remove blue.tr.mats.powder
tag @s remove blue.tr.mats.shard
tag @s remove blue.tr.mats.set
tag @s remove blue.tr.mats.shulker
tag @s remove blue.tr.mats.star
tag @s remove blue.tr.mats.feet
tag @s remove blue.tr.mats.legs
tag @s remove blue.tr.mats.chest
tag @s remove blue.tr.mats.head
function blue:tr/inv/equip/remove_owner
advancement revoke @s only blue:tr/trust
scoreboard players reset @s blue.tr.combat
execute if score #st blue.misc matches 2 if entity @a[tag=blue.tr.wayfinder,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.wayfinder]","color":"white"},{"translate":"Wayfinder","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run advancement grant @s only blue:tr/trust wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run tag @s add blue.tr.wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"wayfinder",material:"nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"wayfinder",material:"nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"wayfinder",material:"nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"wayfinder",material:"nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run scoreboard players set @s blue.tr.structures 32
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run give @s compass
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run give @s lodestone
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run give @s filled_map
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.wayfinder,distance=0.1..] run return run give @s fishing_rod
execute if score #st blue.misc matches 3 if entity @a[tag=blue.tr.silence,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.silence]","color":"white"},{"translate":"Silence","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run advancement grant @s only blue:tr/trust silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run tag @s add blue.tr.silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"silence",material:"echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"silence",material:"echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"silence",material:"echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"silence",material:"echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.silence,distance=0.1..] run return run give @s echo_shard 64
execute if score #st blue.misc matches 4 if entity @a[tag=blue.tr.shaper,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.shaper]","color":"white"},{"translate":"Shaper","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run advancement grant @s only blue:tr/trust shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run tag @s add blue.tr.shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"shaper",material:"gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"shaper",material:"gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"shaper",material:"gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"shaper",material:"gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run give @s diamond_pickaxe
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.shaper,distance=0.1..] run return run give @s tnt 32
execute if score #st blue.misc matches 5 if entity @a[tag=blue.tr.sentry,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.sentry]","color":"white"},{"translate":"Sentry","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run advancement grant @s only blue:tr/trust sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run tag @s add blue.tr.sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"sentry",material:"diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"sentry",material:"diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"sentry",material:"diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"sentry",material:"diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run give @s crossbow[enchantments={quick_charge:3}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run give @s arrow 16
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.sentry,distance=0.1..] run effect give @s hero_of_the_village 240 4 true
execute if score #st blue.misc matches 6 if entity @a[tag=blue.tr.raiser,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.raiser]","color":"white"},{"translate":"Raiser","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run advancement grant @s only blue:tr/trust raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run tag @s add blue.tr.raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"raiser",material:"lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"raiser",material:"lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"raiser",material:"lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"raiser",material:"lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run give @s experience_bottle
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.raiser,distance=0.1..] run return run xp set @s 60 levels
execute if score #st blue.misc matches 7 if entity @a[tag=blue.tr.coast,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.coast]","color":"white"},{"translate":"Coast","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run advancement grant @s only blue:tr/trust coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run tag @s add blue.tr.coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"coast",material:"emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"coast",material:"emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"coast",material:"emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"coast",material:"emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run give @s trident[enchantments={loyalty:3}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run give @s cod 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run give @s pufferfish 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run give @s salmon 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.coast,distance=0.1..] run return run give @s tropical_fish 32
execute if score #st blue.misc matches 8 if entity @a[tag=blue.tr.snout,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.snout]","color":"white"},{"translate":"Snout","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run advancement grant @s only blue:tr/trust snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run tag @s add blue.tr.snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"snout",material:"gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"snout",material:"gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"snout",material:"gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"snout",material:"gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run give @s gold_nugget 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run give @s gold_ingot 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.snout,distance=0.1..] run return run give @s gold_block 32
execute if score #st blue.misc matches 9 if entity @a[tag=blue.tr.spire,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.spire]","color":"white"},{"translate":"Spire","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run advancement grant @s only blue:tr/trust spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run tag @s add blue.tr.spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"spire",material:"shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"spire",material:"shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"spire",material:"shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"spire",material:"shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.spire,distance=0.1..] run return run give @s dragon_breath 16
execute if score #st blue.misc matches 10 if entity @a[tag=blue.tr.dune,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.dune]","color":"white"},{"translate":"Dune","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run advancement grant @s only blue:tr/trust dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run tag @s add blue.tr.dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"dune",material:"iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"dune",material:"iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"dune",material:"iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"dune",material:"iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.dune,distance=0.1..] run return run give @s sand 32
execute if score #st blue.misc matches 11 if entity @a[tag=blue.tr.ward,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.ward]","color":"white"},{"translate":"Ward","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run advancement grant @s only blue:tr/trust ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run tag @s add blue.tr.ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"ward",material:"netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"ward",material:"netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"ward",material:"netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"ward",material:"netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.ward,distance=0.1..] run return run give @s shield
execute if score #st blue.misc matches 12 if entity @a[tag=blue.tr.host,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.host]","color":"white"},{"translate":"Host","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run advancement grant @s only blue:tr/trust host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run tag @s add blue.tr.host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run advancement grant @s only blue:tr/cure
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"host",material:"redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"host",material:"redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"host",material:"redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"host",material:"redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.host,distance=0.1..] run return run give @s iron_golem_spawn_egg
execute if score #st blue.misc matches 14 if entity @a[tag=blue.tr.tide,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.tide]","color":"white"},{"translate":"Tide","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run advancement grant @s only blue:tr/trust tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run tag @s add blue.tr.tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"tide",material:"heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"tide",material:"heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"tide",material:"heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"tide",material:"heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run scoreboard players set #.tide.stacks blue.misc 5
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run give @s trident[enchantments={riptide:3}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.tide,distance=0.1..] run return run give @s trident[enchantments={loyalty:3}]
execute if score #st blue.misc matches 16 if entity @a[tag=blue.tr.eye,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.eye]","color":"white"},{"translate":"Eye","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run advancement grant @s only blue:tr/trust eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run tag @s add blue.tr.eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"eye",material:"ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"eye",material:"ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"eye",material:"ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"eye",material:"ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run give @s ender_pearl 8
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run give @s ender_eye 4
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.eye,distance=0.1..] run return run give @s spyglass
execute if score #st blue.misc matches 17 if entity @a[tag=blue.tr.vex,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.vex]","color":"white"},{"translate":"Vex","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run advancement grant @s only blue:tr/trust vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run tag @s add blue.tr.vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"vex",material:"quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"vex",material:"quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"vex",material:"quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"vex",material:"quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.vex,distance=0.1..] run return run give @s diamond_axe
execute if score #st blue.misc matches 18 if entity @a[tag=blue.tr.wild,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.wild]","color":"white"},{"translate":"Wild","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run advancement grant @s only blue:tr/trust wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run tag @s add blue.tr.wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run give @s cornflower 16
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"wild",material:"nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"wild",material:"nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"wild",material:"nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.wild,distance=0.1..] run return run item replace entity @s armor.feet with diamond_boots[trim={pattern:"wild",material:"nautilus_shell"}]
execute if score #st blue.misc matches 19 if entity @a[tag=blue.tr.rib,distance=0.1..] run return run tellraw @s {"translate":"blue.tr.armor_worn","fallback":"%s is already wearing %s","with":[{"selector":"@a[tag=blue.tr.rib]","color":"white"},{"translate":"Rib","color":"white"}],"color":"gray"}
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run advancement grant @s only blue:tr/trust rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run tag @s add blue.tr.rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run scoreboard players set @s blue.tr.combat -2400
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"rib",material:"blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"rib",material:"blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"rib",material:"blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.rib,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"rib",material:"blaze_powder"}]