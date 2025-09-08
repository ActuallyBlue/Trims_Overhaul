particle smoke ~ ~1.1 ~ 0.4 0.75 0.4 0.05 8 normal @a[scores={blue.particles=2..}]
particle smoke ~ ~1.1 ~ 0.55 0.45 0.55 0.05 14
particle lava ~ ~1.1 ~ 0.7 0.45 0.7 0.05 2
effect give @s resistance 2 3 true
effect give @s absorption 2 1 true
execute unless block ~ ~ ~ #fall_damage_resetting unless block ~ ~ ~ water if score #.temp blue.misc matches ..1 unless score @s blue.tr.died matches 1.. run function blue:tr/effects/shaper/emp/impact