execute as @e[distance=..8,tag=blue.tr.shaper.tnt,limit=1,type=tnt] unless entity @a[tag=blue.tr.shaper,advancements={blue:tr/trust={wild=true}},limit=1] at @s run function blue:tr/effects/wild/nature_war
execute if score #.20 blue.misc matches 7 unless score #.wild.charging blue.misc matches 1 run particle spore_blossom_air ~ ~0.9 ~ 0.1 0.3 0.1 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.20 blue.misc matches 15 run function blue:tr/effects/wild/zoologist
execute unless score #.wild.florist_cooldown blue.misc matches 1 if predicate blue:tr/florist anchored eyes run function blue:tr/effects/wild/florist
execute if score #.wild.florist_active blue.misc matches -1 unless predicate blue:tr/florist store success score #.wild.florist_active blue.misc run kill @e[tag=blue.tr.wild_florist_hitbox,limit=1,type=interaction]
execute unless entity @s[tag=blue.tr.mats.naut] run return 0
damage @e[type=!#blue:shared/peaceful,distance=..0.6,tag=!blue.tr.wild,limit=1] 4.5 blue:tr/poke by @s
execute store success score #.wild.ambient blue.misc unless score #.wild.ambient blue.misc matches 1
execute if score #.wild.ambient blue.misc matches 0 unless block ~ ~-0.5 ~ #blue:shared/passable run particle falling_spore_blossom ~ ~0.25 ~ 0.22 0.1 0.22 1 1 normal @a[scores={blue.particles=1..}]
execute if score #.wild.ambient blue.misc matches 1 unless block ~ ~-0.5 ~ #blue:shared/passable run particle falling_spore_blossom ~ ~0.25 ~ 0.22 0.1 0.22 1 1 normal @a[scores={blue.particles=2..}]
execute if score #.60 blue.misc matches 40 store result score #.wild.traps blue.misc if entity @e[tag=blue.tr.wild.trap,type=marker]
execute if score #.60 blue.misc matches 40 if score #.wild.traps blue.misc > #.wild.trap_limit blue.config run kill @e[tag=blue.tr.wild.trap,sort=furthest,limit=1,type=marker]
execute if score #.wild.traps blue.misc matches 1.. as @e[tag=blue.tr.wild.trap,type=marker] at @s positioned ~ ~1.25 ~ run function blue:tr/effects/wild/emp/trap/entity
execute if score #.wild.traps blue.misc matches 1.. positioned ^ ^ ^1 facing entity @e[tag=blue.tr.wild.trap,distance=..32,type=marker] eyes positioned ^ ^ ^-1 at @s[distance=..0.1] anchored eyes run function blue:tr/effects/wild/emp/trap/looking
execute if score #.wild.looking blue.misc matches 1 unless score #.temp blue.misc matches -1 run function blue:tr/effects/wild/emp/trap/reset_looking
execute if predicate blue:shared/is_sneaking align xyz positioned ~0.5 ~ ~0.5 if block ~ ~-1 ~ grass_block run function blue:tr/effects/wild/emp/trap/placing
execute if score #.wild.charge blue.misc matches 1.. unless score #.wild.charging blue.misc matches 1 run function blue:tr/effects/wild/emp/trap/reset
scoreboard players reset #.wild.charging blue.misc
execute unless score #.20 blue.misc matches 10 run return 0
execute if block ~ ~-0.5 ~ grass_block unless block ~ ~ ~ #replaceable run function blue:tr/effects/wild/emp/grounded
execute if block ~ ~-0.5 ~ dirt run function blue:tr/effects/wild/emp/grounded