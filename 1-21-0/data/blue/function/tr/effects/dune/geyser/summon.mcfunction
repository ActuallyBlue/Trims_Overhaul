schedule function blue:tr/effects/dune/geyser/checks 1t
execute positioned ~-0.5 ~-4 ~-0.5 run kill @e[dy=8,tag=blue.tr.dune_geyser,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Radius:0,custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"},Duration:80,Tags:["blue.tr.dune_geyser"]}