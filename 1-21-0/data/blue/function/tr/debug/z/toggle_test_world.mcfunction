scoreboard objectives add Set_Trim trigger
scoreboard players reset #st blue.misc
scoreboard players operation #st blue.misc = @s Set_Trim
execute at @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:lightning_rod",components:{"minecraft:custom_data":{t:i}}}}] run summon lightning_bolt
execute unless score #st blue.misc matches 1.. if entity @s store success score enabled Set_Trim run schedule clear blue:tr/debug/z/toggle_test_world
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run tellraw @a [{"text":"\n'/trigger Set_Trim'","color":"white","clickEvent":{"action":"run_command","value":"/trigger Set_Trim"},"click_event":{"action":"run_command","command":"/trigger Set_Trim"}},{"translate":"blue.tr.test_world_guide","fallback":" to change trims and give yourself items","color":"gray"}]
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run tellraw @s [{"translate":"blue.tr.test_world_warn","fallback":"Also ask yourself: \"Is this world important?\" before using this. If the answer is yes, run this function again.\n"}]
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run team add blue.tr.silence
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run team add blue.tr.rib
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.mined_sand mined:sand
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.fear dummy
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run scoreboard objectives add blue.tr.damage_blocked custom:damage_blocked_by_shield
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 0 run return run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. if entity @s if score enabled Set_Trim matches 1 run return run scoreboard objectives remove Set_Trim
execute unless score #st blue.misc matches 1.. unless entity @s run scoreboard players enable @a Set_Trim
execute unless score #st blue.misc matches 1.. unless entity @s as @a unless entity @s[advancements={blue:tr/tags={tutorial_barrage=true,tutorial_piercer=true,tutorial_vortex=true,tutorial_complete_objective=true,tutorial_resource_pack=true,tutorial_pickup_trim=true,tutorial_new_player=true,tutorial_creative=true,tutorial_transfer=true,tutorial_rtd=true}}] run function blue:tr/delayed/5tick/cmd/skip_tutorials
execute unless score #st blue.misc matches 1.. unless entity @s run tag @a add blue.tr.ignore_first
execute unless score #st blue.misc matches 1.. unless entity @s run schedule function blue:tr/debug/z/toggle_test_world 1t
execute unless score #st blue.misc matches 1.. unless entity @s run return run execute as @a[scores={Set_Trim=1..}] at @s run function blue:tr/debug/z/toggle_test_world
scoreboard players reset @s Set_Trim
scoreboard players enable @s Set_Trim
execute if score #st blue.misc matches ..1 run return run tellraw @s [{"translate":"gui.none","color":"gray","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 21"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 21"}},{"text":" | ","color":"dark_gray"},{"translate":"blue.tr.items","fallback":"Items","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 20"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 20"},"color":"gold"},{"text":" | ","color":"dark_gray"},{"translate":"blue.tr.clear","fallback":"Clear","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 50"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 50"},"color":"red"},{"text":" | ","color":"dark_gray"},{"translate":"blue.tr.doc","fallback":"Doc","clickEvent":{"action":"open_url","value":"https://docs.google.com/document/d/1Z04cs4oRW0-O9XM3dr1biNXe-d38N02vr999cV-Sdhk/edit?tab=t.0"},"click_event":{"action":"open_url","url":"https://docs.google.com/document/d/1Z04cs4oRW0-O9XM3dr1biNXe-d38N02vr999cV-Sdhk/edit?tab=t.0"},"color":"white"},"\n",{"translate":"Wayfinder","color":"#F1FFC8","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 2"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 2"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Silence","color":"#3842Cf","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 3"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 3"}},"\n",{"translate":"Shaper","color":"#8F8F8F","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 4"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 4"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Sentry","color":"#4B885B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 5"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 5"}},"\n",{"translate":"Raiser","color":"#95B623","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 6"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 6"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Coast","color":"#C1C888","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 7"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 7"}},"\n",{"translate":"Snout","color":"#F2B01A","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 8"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 8"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Spire","color":"#BE20C7","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 9"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 9"}},"\n",{"translate":"Dune","color":"#E7C547","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 10"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 10"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Ward","color":"#5C70AE","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 11"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 11"}},"\n",{"translate":"Host","color":"#A34646","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 12"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 12"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Flow","color":"#85B2C5","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 13"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 13"}},"\n",{"translate":"Tide","color":"#199ADD","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 14"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 14"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Bolt","color":"#B65D1A","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 15"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 15"}},"\n",{"translate":"Eye","color":"#1F8A46","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 16"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 16"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 17"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 17"}},"\n",{"translate":"Wild","color":"#00D529","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 18"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 18"}},{"text":"  |  ","color":"dark_gray"},{"translate":"Rib","color":"#E6484B","clickEvent":{"action":"run_command","value":"/trigger Set_Trim set 19"},"click_event":{"action":"run_command","command":"/trigger Set_Trim set 19"}}]
execute if score #st blue.misc matches 50 run return run clear
clear @s *[!custom_data]
execute store success score #.temp blue.misc if entity @e[type=!#blue:tr/peaceful]
execute if score #st blue.misc matches 20 run clear @s *[custom_data~{k:i}]
execute if score #st blue.misc matches 20 run give @s bow[enchantments={power:4},custom_data={k:i}]
execute if score #st blue.misc matches 20 run give @s diamond_sword[enchantments={sharpness:5,fire_aspect:2},custom_data={k:i}]
execute if score #st blue.misc matches 20 run give @s diamond_axe[!tool,enchantments={sharpness:5},custom_data={k:i}]
execute if score #st blue.misc matches 20 if items entity @s weapon.offhand shield run item replace entity @s weapon.offhand with shield[custom_data={k:i},enchantments={unbreaking:3}]
execute if score #st blue.misc matches 20 if items entity @s weapon.offhand * unless items entity @s weapon.offhand shield run give @s shield[custom_data={k:i},enchantments={unbreaking:3}]
execute if score #st blue.misc matches 20 unless items entity @s weapon.offhand * run item replace entity @s weapon.offhand with shield[custom_data={k:i},enchantments={unbreaking:3}]
execute if score #st blue.misc matches 20 run give @s cobweb[custom_data={k:i}] 64
execute if score #st blue.misc matches 20 run give @s wind_charge[custom_data={k:i}] 64
execute if score #st blue.misc matches 20 run give @s golden_apple[custom_data={k:i},max_stack_size=16] 16
execute if score #st blue.misc matches 20 run give @s ender_pearl[custom_data={k:i}] 16
execute if score #st blue.misc matches 20 run give @s water_bucket[custom_data={k:i}]
execute if score #st blue.misc matches 20 run give @s lava_bucket[custom_data={k:i}]
execute if score #st blue.misc matches 20 run give @s splash_potion[custom_data={k:i},potion_contents={potion:"strong_strength"}] 5
execute if score #st blue.misc matches 20 run give @s splash_potion[custom_data={k:i},potion_contents={potion:"strong_swiftness"}] 5
execute if score #st blue.misc matches 20 run give @s splash_potion[custom_data={k:i},potion_contents={potion:"long_fire_resistance"}] 5
execute if score #st blue.misc matches 20 run give @s cooked_beef[custom_data={k:i}] 64
execute if score #st blue.misc matches 20 if score #.temp blue.misc matches ..8 run give @s skeleton_spawn_egg[custom_data={k:i}] 4
execute if score #st blue.misc matches 20 if score #.temp blue.misc matches ..8 run give @s zombie_spawn_egg[custom_data={k:i}] 4
execute if score #st blue.misc matches 20 run give @s arrow[custom_data={k:i},max_stack_size=99] 99
execute if score #st blue.misc matches 20 run return run give @s crossbow[enchantments={quick_charge:3},custom_data={k:i}]
clear @s *[custom_data~{t:i}]
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
tag @s remove blue.tr.trim.flow
tag @s remove blue.tr.trim.tide
tag @s remove blue.tr.trim.bolt
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
tag @s remove blue.tr.flow
tag @s remove blue.tr.tide
tag @s remove blue.tr.bolt
tag @s remove blue.tr.eye
tag @s remove blue.tr.vex
tag @s remove blue.tr.wild
tag @s remove blue.tr.rib
advancement revoke @s only blue:tr/trust
execute if score #st blue.misc matches 21.. run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 21.. run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 21.. run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 21.. run return run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 2 if entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.wayfinder]"},"is already using wayfinder"]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run advancement grant @s only blue:tr/trust wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run tag @s add blue.tr.wayfinder
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:nether_star,pattern:wayfinder},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:nether_star,pattern:wayfinder},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:nether_star,pattern:wayfinder},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:nether_star,pattern:wayfinder},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s compass[custom_data={t:i}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s lodestone[custom_data={t:i}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run give @s filled_map[custom_data={t:i}]
execute if score #st blue.misc matches 2 unless entity @a[tag=blue.tr.trim.wayfinder,distance=0.1..] run return run give @s fishing_rod[custom_data={t:i}]
execute if score #st blue.misc matches 3 if entity @a[tag=blue.tr.trim.silence,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.silence]"},"is already using silence"]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run advancement grant @s only blue:tr/trust silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run tag @s add blue.tr.silence
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:echo_shard,pattern:silence},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:echo_shard,pattern:silence},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:echo_shard,pattern:silence},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:echo_shard,pattern:silence},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 3 unless entity @a[tag=blue.tr.trim.silence,distance=0.1..] run return run give @s echo_shard[custom_data={t:i}] 64
execute if score #st blue.misc matches 4 if entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.shaper]"},"is already using shaper"]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run advancement grant @s only blue:tr/trust shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run tag @s add blue.tr.shaper
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:gunpowder,pattern:shaper},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:gunpowder,pattern:shaper},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:gunpowder,pattern:shaper},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:gunpowder,pattern:shaper},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 4 unless entity @a[tag=blue.tr.trim.shaper,distance=0.1..] run return run give @s tnt[custom_data={t:i}] 9
execute if score #st blue.misc matches 5 if entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.sentry]"},"is already using sentry"]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run advancement grant @s only blue:tr/trust sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run tag @s add blue.tr.sentry
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:diamond,pattern:sentry},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:diamond,pattern:sentry},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:diamond,pattern:sentry},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:diamond,pattern:sentry},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run execute unless items entity @s container.* crossbow unless items entity @s weapon.offhand crossbow run give @s crossbow[enchantments={quick_charge:3},custom_data={t:i,k:i}]
execute if score #st blue.misc matches 5 unless entity @a[tag=blue.tr.trim.sentry,distance=0.1..] run return run effect give @s hero_of_the_village 120 4 true
execute if score #st blue.misc matches 6 if entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.raiser]"},"is already using raiser"]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run advancement grant @s only blue:tr/trust raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run tag @s add blue.tr.raiser
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:lapis,pattern:raiser},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:lapis,pattern:raiser},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:lapis,pattern:raiser},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:lapis,pattern:raiser},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run give @s experience_bottle[custom_data={t:i}] 16
execute if score #st blue.misc matches 6 unless entity @a[tag=blue.tr.trim.raiser,distance=0.1..] run return run xp set @s 60 levels
execute if score #st blue.misc matches 7 if entity @a[tag=blue.tr.trim.coast,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.coast]"},"is already using coast"]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run advancement grant @s only blue:tr/trust coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run tag @s add blue.tr.coast
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:emerald,pattern:coast},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:emerald,pattern:coast},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:emerald,pattern:coast},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:emerald,pattern:coast},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s trident[enchantments={loyalty:3},custom_data={t:i}]
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s cod[custom_data={t:i}] 34
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s pufferfish[custom_data={t:i}] 28
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run give @s salmon[custom_data={t:i}] 22
execute if score #st blue.misc matches 7 unless entity @a[tag=blue.tr.trim.coast,distance=0.1..] run return run give @s tropical_fish[custom_data={t:i}] 16
execute if score #st blue.misc matches 8 if entity @a[tag=blue.tr.trim.snout,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.snout]"},"is already using snout"]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run advancement grant @s only blue:tr/trust snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run tag @s add blue.tr.snout
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:gold,pattern:snout},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:gold,pattern:snout},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:gold,pattern:snout},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:gold,pattern:snout},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run give @s gold_nugget[custom_data={t:i}] 32
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run give @s gold_ingot[custom_data={t:i}] 26
execute if score #st blue.misc matches 8 unless entity @a[tag=blue.tr.trim.snout,distance=0.1..] run return run give @s gold_block[custom_data={t:i}] 20
execute if score #st blue.misc matches 9 if entity @a[tag=blue.tr.trim.spire,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.spire]"},"is already using spire"]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run advancement grant @s only blue:tr/trust spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run tag @s add blue.tr.spire
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:shulker_shell,pattern:spire},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:shulker_shell,pattern:spire},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:shulker_shell,pattern:spire},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:shulker_shell,pattern:spire},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 9 unless entity @a[tag=blue.tr.trim.spire,distance=0.1..] run return run give @s dragon_breath[custom_data={t:i}] 8
execute if score #st blue.misc matches 10 if entity @a[tag=blue.tr.trim.dune,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.dune]"},"is already using dune"]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run advancement grant @s only blue:tr/trust dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run tag @s add blue.tr.dune
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:iron,pattern:dune},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:iron,pattern:dune},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:iron,pattern:dune},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:iron,pattern:dune},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 10 unless entity @a[tag=blue.tr.trim.dune,distance=0.1..] run return run give @s sand[custom_data={t:i}] 64
execute if score #st blue.misc matches 11 if entity @a[tag=blue.tr.trim.ward,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.ward]"},"is already using ward"]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run advancement grant @s only blue:tr/trust ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run tag @s add blue.tr.ward
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:netherite,pattern:ward},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:netherite,pattern:ward},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:netherite,pattern:ward},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:netherite,pattern:ward},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 11 unless entity @a[tag=blue.tr.trim.ward,distance=0.1..] run return run execute unless items entity @s container.* shield unless items entity @s weapon.offhand shield run give @s shield[custom_data={t:i,k:i}]
execute if score #st blue.misc matches 12 if entity @a[tag=blue.tr.trim.host,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.host]"},"is already using host"]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run advancement grant @s only blue:tr/trust host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run tag @s add blue.tr.host
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run advancement grant @s only blue:tr/cure
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:redstone,pattern:host},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:redstone,pattern:host},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:redstone,pattern:host},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run give @s iron_golem_spawn_egg[custom_data={t:i}]
execute if score #st blue.misc matches 12 unless entity @a[tag=blue.tr.trim.host,distance=0.1..] run return run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:redstone,pattern:host},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 13 if entity @a[tag=blue.tr.trim.flow,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.flow]"},"is already using flow"]
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run advancement grant @s only blue:tr/trust flow
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run tag @s add blue.tr.flow
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:wind_charge,pattern:flow},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:wind_charge,pattern:flow},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:wind_charge,pattern:flow},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:wind_charge,pattern:flow},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 13 unless entity @a[tag=blue.tr.trim.flow,distance=0.1..] run return run give @s mace[enchantments={wind_burst:2,density:2},damage=420,custom_data={t:i}]
execute if score #st blue.misc matches 14 if entity @a[tag=blue.tr.trim.tide,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.tide]"},"is already using tide"]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run advancement grant @s only blue:tr/trust tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run tag @s add blue.tr.tide
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:heart_of_the_sea,pattern:tide},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:heart_of_the_sea,pattern:tide},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:heart_of_the_sea,pattern:tide},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:heart_of_the_sea,pattern:tide},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run give @s trident[enchantments={loyalty:3},custom_data={t:i}]
execute if score #st blue.misc matches 14 unless entity @a[tag=blue.tr.trim.tide,distance=0.1..] run return run give @s trident[enchantments={riptide:3},custom_data={t:i}]
execute if score #st blue.misc matches 15 if entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.bolt]"},"is already using bolt"]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run advancement grant @s only blue:tr/trust bolt
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run tag @s add blue.tr.bolt
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:copper,pattern:bolt},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:copper,pattern:bolt},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:copper,pattern:bolt},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:copper,pattern:bolt},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run give @s lightning_rod[item_name='"Drop to spawn lightning"',lore=['"Test-mode exclusive"'],custom_data={t:i}]
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run give @s oxidized_copper[custom_data={t:i}] 32
execute if score #st blue.misc matches 15 unless entity @a[tag=blue.tr.trim.bolt,distance=0.1..] run return run give @s copper_block[custom_data={t:i}] 32
execute if score #st blue.misc matches 16 if entity @a[tag=blue.tr.trim.eye,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.eye]"},"is already using eye"]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run advancement grant @s only blue:tr/trust eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run tag @s add blue.tr.eye
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:ender_eye,pattern:eye},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:ender_eye,pattern:eye},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:ender_eye,pattern:eye},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:ender_eye,pattern:eye},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] unless items entity @s container.* ender_pearl run give @s ender_pearl[custom_data={t:i}] 4
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run give @s ender_eye[custom_data={t:i}]
execute if score #st blue.misc matches 16 unless entity @a[tag=blue.tr.trim.eye,distance=0.1..] run return run give @s spyglass[custom_data={t:i}]
execute if score #st blue.misc matches 17 if entity @a[tag=blue.tr.trim.vex,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.vex]"},"is already using vex"]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run advancement grant @s only blue:tr/trust vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run tag @s add blue.tr.vex
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:quartz,pattern:vex},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:quartz,pattern:vex},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:quartz,pattern:vex},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:quartz,pattern:vex},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 17 unless entity @a[tag=blue.tr.trim.vex,distance=0.1..] run return run execute unless items entity @s container.* #minecraft:axes run give @s diamond_axe[custom_data={t:i}]
execute if score #st blue.misc matches 18 if entity @a[tag=blue.tr.trim.wild,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.wild]"},"is already using wild"]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run advancement grant @s only blue:tr/trust wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run tag @s add blue.tr.wild
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run give @s cornflower[custom_data={t:i}] 16
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:nautilus_shell,pattern:wild},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:nautilus_shell,pattern:wild},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:nautilus_shell,pattern:wild},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 18 unless entity @a[tag=blue.tr.trim.wild,distance=0.1..] run return run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:nautilus_shell,pattern:wild},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 19 if entity @a[tag=blue.tr.trim.rib,distance=0.1..] run return run tellraw @s [{"selector":"@a[tag=blue.tr.trim.rib]"},"is already using rib"]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run advancement grant @s only blue:tr/trust rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run tag @s add blue.tr.rib
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.head with diamond_helmet[custom_data={t:i},trim={material:blaze_powder,pattern:rib},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.chest with diamond_chestplate[custom_data={t:i},trim={material:blaze_powder,pattern:rib},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.legs with diamond_leggings[custom_data={t:i},trim={material:blaze_powder,pattern:rib},enchantments={protection:4},unbreakable={}]
execute if score #st blue.misc matches 19 unless entity @a[tag=blue.tr.trim.rib,distance=0.1..] run item replace entity @s armor.feet with diamond_boots[custom_data={t:i},trim={material:blaze_powder,pattern:rib},enchantments={protection:4},unbreakable={}]