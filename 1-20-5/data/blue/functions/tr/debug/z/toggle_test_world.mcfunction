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
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run return 0
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 1 run scoreboard objectives remove Set_Trim
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 1 run return 0
execute unless score #st blue.misc matches 1.. unless entity @s run scoreboard players enable @a Set_Trim
execute unless score #st blue.misc matches 1.. unless entity @s as @a run function blue:tr/delayed/5tick/cmd/skip_tutorials
execute unless score #st blue.misc matches 1.. unless entity @s run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. unless entity @s as @a[scores={Set_Trim=1..}] at @s run function blue:tr/debug/z/toggle_test_world
execute unless score #st blue.misc matches 1.. unless entity @s run return 0
scoreboard players reset @s Set_Trim
scoreboard players enable @s Set_Trim
execute if score #st blue.misc matches ..1 run tellraw @s [{"translate":"Wayfinder","color":"#F1FFC8","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 2"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Silence","color":"#3842Cf","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 3"}},"\n",{"translate":"Shaper","color":"#8F8F8F","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 4"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Sentry","color":"#4B885B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 5"}},"\n",{"translate":"Raiser","color":"#95B623","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 6"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Coast","color":"#C1C888","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 7"}},"\n",{"translate":"Snout","color":"#F2B01A","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 8"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Spire","color":"#BE20C7","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 9"}},"\n",{"translate":"Dune","color":"#E7C547","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 10"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Ward","color":"#5C70AE","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 11"}},"\n",{"translate":"Host","color":"#A34646","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 12"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Tide","color":"#199ADD","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 14"}},"\n",{"translate":"Eye","color":"#1F8A46","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 16"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 17"}},"\n",{"translate":"Wild","color":"#00D529","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 18"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Rib","color":"#E6484B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 19"}}]
execute if score #st blue.misc matches ..1 run return 0
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
tag @s remove blue.tr.mats.wind
tag @s remove blue.tr.feet_mat
tag @s remove blue.tr.legs_mat
tag @s remove blue.tr.chest_mat
tag @s remove blue.tr.head_mat
tag @s remove blue.tr.trim.wayfinder
tag @s remove blue.tr.trim.silence
tag @s remove blue.tr.trim.shaper
tag @s remove blue.tr.trim.sentry
tag @s remove blue.tr.trim.raiser
tag @s remove blue.tr.trim.coast
tag @s remove blue.tr.trim.snout
tag @s remove blue.tr.trim.spire
tag @s remove blue.tr.trim.dune
tag @s remove blue.tr.trim.ward
tag @s remove blue.tr.trim.host
tag @s remove blue.tr.trim.tide
tag @s remove blue.tr.trim.eye
tag @s remove blue.tr.trim.vex
tag @s remove blue.tr.trim.wild
tag @s remove blue.tr.trim.rib
tag @s remove blue.tr.wayfinder
tag @s remove blue.tr.silence
tag @s remove blue.tr.shaper
tag @s remove blue.tr.sentry
tag @s remove blue.tr.raiser
tag @s remove blue.tr.coast
tag @s remove blue.tr.snout
tag @s remove blue.tr.spire
tag @s remove blue.tr.dune
tag @s remove blue.tr.ward
tag @s remove blue.tr.host
tag @s remove blue.tr.tide
tag @s remove blue.tr.eye
tag @s remove blue.tr.vex
tag @s remove blue.tr.wild
tag @s remove blue.tr.rib
advancement revoke @s only blue:tr/trust
execute if score #st blue.misc matches 2 if entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.wayfinder]"},"is already using wayfinder"]
execute if score #st blue.misc matches 2 if entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run return 0
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run advancement grant @s only blue:tr/trust wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run tag @s add blue.tr.wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:wayfinder",material:"minecraft:nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:wayfinder",material:"minecraft:nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:wayfinder",material:"minecraft:nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:wayfinder",material:"minecraft:nether_star"}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s compass
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s lodestone
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s filled_map
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s fishing_rod
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run return 0
execute if score #st blue.misc matches 3 if entity @a[tag=blue.tr.trim.silence,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.silence]"},"is already using silence"]
execute if score #st blue.misc matches 3 if entity @a[tag=blue.tr.trim.silence,distance=0.1..] run return 0
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run advancement grant @s only blue:tr/trust silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run tag @s add blue.tr.silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:silence",material:"minecraft:echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:silence",material:"minecraft:echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:silence",material:"minecraft:echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:silence",material:"minecraft:echo_shard"}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run give @s echo_shard 64
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run return 0
execute if score #st blue.misc matches 4 if entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.shaper]"},"is already using shaper"]
execute if score #st blue.misc matches 4 if entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run return 0
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run advancement grant @s only blue:tr/trust shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run tag @s add blue.tr.shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:shaper",material:"minecraft:gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:shaper",material:"minecraft:gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:shaper",material:"minecraft:gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:shaper",material:"minecraft:gunpowder"}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run give @s tnt 32
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run return 0
execute if score #st blue.misc matches 5 if entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.sentry]"},"is already using sentry"]
execute if score #st blue.misc matches 5 if entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run return 0
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run advancement grant @s only blue:tr/trust sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run tag @s add blue.tr.sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:sentry",material:"minecraft:diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:sentry",material:"minecraft:diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:sentry",material:"minecraft:diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:sentry",material:"minecraft:diamond"}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run give @s crossbow
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run effect give @s hero_of_the_village 120 4 true
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run effect give @s hero_of_the_village 120 4 true
execute if score #st blue.misc matches 6 if entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.raiser]"},"is already using raiser"]
execute if score #st blue.misc matches 6 if entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run return 0
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run advancement grant @s only blue:tr/trust raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run tag @s add blue.tr.raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:raiser",material:"minecraft:lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:raiser",material:"minecraft:lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:raiser",material:"minecraft:lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:raiser",material:"minecraft:lapis"}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run give @s experience_bottle
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run xp set @s 60 levels
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run return 0
execute if score #st blue.misc matches 7 if entity @a[tag=blue.tr.trim.coast,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.coast]"},"is already using coast"]
execute if score #st blue.misc matches 7 if entity @a[tag=blue.tr.trim.coast,distance=0.1..] run return 0
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run advancement grant @s only blue:tr/trust coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run tag @s add blue.tr.coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:coast",material:"minecraft:emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:coast",material:"minecraft:emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:coast",material:"minecraft:emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:coast",material:"minecraft:emerald"}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s trident
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s cod 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s pufferfish 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s salmon 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s tropical_fish 32
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run return 0
execute if score #st blue.misc matches 8 if entity @a[tag=blue.tr.trim.snout,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.snout]"},"is already using snout"]
execute if score #st blue.misc matches 8 if entity @a[tag=blue.tr.trim.snout,distance=0.1..] run return 0
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run advancement grant @s only blue:tr/trust snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run tag @s add blue.tr.snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:snout",material:"minecraft:gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:snout",material:"minecraft:gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:snout",material:"minecraft:gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:snout",material:"minecraft:gold"}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run give @s gold_nugget 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run give @s gold_ingot 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run give @s gold_block 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run return 0
execute if score #st blue.misc matches 9 if entity @a[tag=blue.tr.trim.spire,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.spire]"},"is already using spire"]
execute if score #st blue.misc matches 9 if entity @a[tag=blue.tr.trim.spire,distance=0.1..] run return 0
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run advancement grant @s only blue:tr/trust spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run tag @s add blue.tr.spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:spire",material:"minecraft:shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:spire",material:"minecraft:shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:spire",material:"minecraft:shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:spire",material:"minecraft:shulker_shell"}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run give @s dragon_breath 16
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run return 0
execute if score #st blue.misc matches 10 if entity @a[tag=blue.tr.trim.dune,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.dune]"},"is already using dune"]
execute if score #st blue.misc matches 10 if entity @a[tag=blue.tr.trim.dune,distance=0.1..] run return 0
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run advancement grant @s only blue:tr/trust dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run tag @s add blue.tr.dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:dune",material:"minecraft:iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:dune",material:"minecraft:iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:dune",material:"minecraft:iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:dune",material:"minecraft:iron"}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run give @s sand 32
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run return 0
execute if score #st blue.misc matches 11 if entity @a[tag=blue.tr.trim.ward,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.ward]"},"is already using ward"]
execute if score #st blue.misc matches 11 if entity @a[tag=blue.tr.trim.ward,distance=0.1..] run return 0
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run advancement grant @s only blue:tr/trust ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run tag @s add blue.tr.ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:ward",material:"minecraft:netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:ward",material:"minecraft:netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:ward",material:"minecraft:netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:ward",material:"minecraft:netherite"}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run give @s shield
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run return 0
execute if score #st blue.misc matches 12 if entity @a[tag=blue.tr.trim.host,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.host]"},"is already using host"]
execute if score #st blue.misc matches 12 if entity @a[tag=blue.tr.trim.host,distance=0.1..] run return 0
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run advancement grant @s only blue:tr/trust host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run tag @s add blue.tr.host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run advancement grant @s only blue:tr/cure
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:host",material:"minecraft:redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:host",material:"minecraft:redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:host",material:"minecraft:redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:host",material:"minecraft:redstone"}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run give @s iron_golem_spawn_egg
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run return 0
execute if score #st blue.misc matches 14 if entity @a[tag=blue.tr.trim.tide,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.tide]"},"is already using tide"]
execute if score #st blue.misc matches 14 if entity @a[tag=blue.tr.trim.tide,distance=0.1..] run return 0
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run advancement grant @s only blue:tr/trust tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run tag @s add blue.tr.tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:tide",material:"minecraft:heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:tide",material:"minecraft:heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:tide",material:"minecraft:heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:tide",material:"minecraft:heart_of_the_sea"}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run give @s trident
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run give @s trident
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run return 0
execute if score #st blue.misc matches 16 if entity @a[tag=blue.tr.trim.eye,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.eye]"},"is already using eye"]
execute if score #st blue.misc matches 16 if entity @a[tag=blue.tr.trim.eye,distance=0.1..] run return 0
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run advancement grant @s only blue:tr/trust eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run tag @s add blue.tr.eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:eye",material:"minecraft:ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:eye",material:"minecraft:ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:eye",material:"minecraft:ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:eye",material:"minecraft:ender_eye"}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run give @s ender_pearl 8
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run give @s ender_eye 4
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run give @s spyglass
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run return 0
execute if score #st blue.misc matches 17 if entity @a[tag=blue.tr.trim.vex,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.vex]"},"is already using vex"]
execute if score #st blue.misc matches 17 if entity @a[tag=blue.tr.trim.vex,distance=0.1..] run return 0
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run advancement grant @s only blue:tr/trust vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run tag @s add blue.tr.vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:vex",material:"minecraft:quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:vex",material:"minecraft:quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:vex",material:"minecraft:quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:vex",material:"minecraft:quartz"}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run give @s diamond_axe
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run return 0
execute if score #st blue.misc matches 18 if entity @a[tag=blue.tr.trim.wild,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.wild]"},"is already using wild"]
execute if score #st blue.misc matches 18 if entity @a[tag=blue.tr.trim.wild,distance=0.1..] run return 0
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run advancement grant @s only blue:tr/trust wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run tag @s add blue.tr.wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run give @s cornflower 16
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:wild",material:"minecraft:nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:wild",material:"minecraft:nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:wild",material:"minecraft:nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:wild",material:"minecraft:nautilus_shell"}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run return 0
execute if score #st blue.misc matches 19 if entity @a[tag=blue.tr.trim.rib,distance=0.1..] run tellraw @s [{"selector":"@a[tag=blue.tr.trim.rib]"},"is already using rib"]
execute if score #st blue.misc matches 19 if entity @a[tag=blue.tr.trim.rib,distance=0.1..] run return 0
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run advancement grant @s only blue:tr/trust rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run tag @s add blue.tr.rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[trim={pattern:"minecraft:rib",material:"minecraft:blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[trim={pattern:"minecraft:rib",material:"minecraft:blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[trim={pattern:"minecraft:rib",material:"minecraft:blaze_powder"}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[trim={pattern:"minecraft:rib",material:"minecraft:blaze_powder"}]