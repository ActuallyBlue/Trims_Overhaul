particle mycelium ~ ~-1 ~ 0.2 1 0.2 0 6 force
particle smoke ~ ~-1 ~ 0.4 1 0.4 0.06 16 force
particle lava ~ ~-1 ~ 0.3 1 0.3 0 3 force
particle smoke ~ ~-1 ~ 0.25 1 0.25 0.04 12
effect give @s resistance 2 3 true
effect give @s absorption 2 0 true
execute positioned ~-12 ~2 ~-12 run playsound entity.lightning_bolt.thunder player @a[dx=23,dy=-200,dz=23] ~ -128 ~ 0 0.5 0.5
execute unless predicate blue:shared/on_ground unless score @s blue.tr.died matches 1.. run return fail
particle explosion ~ ~0.5 ~ 0 1 0 0 4
stopsound @a player entity.lightning_bolt.thunder
execute if score @s blue.tr.died matches 1.. run return run playsound entity.generic.explode player @a ~ ~ ~ 2 1.25
execute if block ~ ~ ~ #fall_damage_resetting run return run playsound entity.generic.extinguish_fire player @a ~ ~ ~ 1.5 1.75
execute if block ~ ~ ~ water run return run playsound entity.generic.extinguish_fire player @a ~ ~ ~ 2.5 0.8
particle explosion_emitter ~ ~1 ~ 2 1 2 0 4
effect give @s absorption 7 4 true
summon tnt ~-0.6 ~ ~-0.6 {fuse:0s}
summon tnt ~0.6 ~ ~-0.6 {fuse:0s}
summon tnt ~-0.6 ~ ~0.6 {fuse:0s}
summon tnt ~0.6 ~ ~0.6 {fuse:0s}
tag @s add blue.tr.shaper.abs