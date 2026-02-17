execute if score #.rib.strict_spawn blue.config matches 1 if score @s blue.tr.combat matches -100.. run return 0
execute store result score #.temp blue.misc if entity @e[team=blue.tr.rib,distance=..32,limit=8]
execute if score #.temp blue.misc matches 8.. run return 0
execute store result score #.temp blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_12
execute if score #.temp blue.misc matches 1..4 run summon wither_skeleton ~ ~ ~ {Team:"blue.tr.rib",Tags:["blue.tr.rib_mob"],ActiveEffects:[{Id:11,Duration:120,ShowParticles:false},{Id:12,Duration:120}],active_effects:[{id:"resistance",duration:120,show_particles:false},{id:"fire_resistance",duration:120}],DeathLootTable:""}
execute if score #.temp blue.misc matches 5..8 run summon blaze ~ ~ ~ {Team:"blue.tr.rib",Tags:["blue.tr.rib_mob"],ActiveEffects:[{Id:11,Duration:120,ShowParticles:false},{Id:12,Duration:120}],active_effects:[{id:"resistance",duration:120,show_particles:false},{id:"fire_resistance",duration:120}],DeathLootTable:""}
execute if score #.temp blue.misc matches 9..10 run summon magma_cube ~ ~ ~ {Size:1,Team:"blue.tr.rib",Tags:["blue.tr.rib_mob"],ActiveEffects:[{Id:11,Duration:120,ShowParticles:false},{Id:12,Duration:120}],active_effects:[{id:"resistance",duration:120,show_particles:false},{id:"fire_resistance",duration:120}],DeathLootTable:""}
execute if score #.temp blue.misc matches 11 run summon hoglin ~ ~ ~ {Team:"blue.tr.rib",Tags:["blue.tr.rib_mob"],ActiveEffects:[{Id:11,Duration:120,ShowParticles:false},{Id:12,Duration:120}],active_effects:[{id:"resistance",duration:120,show_particles:false},{id:"fire_resistance",duration:120}],DeathLootTable:""}
execute if score #.temp blue.misc matches 12 run summon piglin_brute ~ ~ ~ {Team:"blue.tr.rib",Tags:["blue.tr.rib_mob"],HandItems:[{id:golden_axe,Count:1b},{}],ActiveEffects:[{Id:11,Duration:120,ShowParticles:false},{Id:12,Duration:120}],active_effects:[{id:"resistance",duration:120,show_particles:false},{id:"fire_resistance",duration:120}],DeathLootTable:""}
damage @e[tag=blue.tr.rib_mob,distance=..0.1,sort=nearest,limit=1] 0 player_attack by @p[advancements={blue:tr/trust={rib=false}},distance=..20]
execute unless score #.rib.ashen_active blue.misc matches 1000.. run scoreboard players add #.rib.ashen_active blue.misc 100
particle smoke ~ ~1 ~ 0.3 0.4 0.3 0 32
team join blue.tr.rib