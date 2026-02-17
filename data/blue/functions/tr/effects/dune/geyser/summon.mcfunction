execute positioned ~-0.5 ~-4 ~-0.5 run kill @e[dy=8,tag=blue.tr.dune_geyser,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {Rotation:[0,180],Duration:80,Tags:["blue.tr.dune_geyser"]}
schedule function blue:tr/effects/dune/geyser/checks 1t