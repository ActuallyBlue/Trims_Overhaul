execute if block ~ ~ ~ sand align xyz unless entity @e[type=area_effect_cloud,distance=..0.1,tag=blue.tr.dune_geyser,limit=1] run function blue:tr/effects/dune/geyser/summon
execute if block ~ ~ ~ sand run return 0
execute positioned ^ ^ ^0.1 if entity @s[distance=..7] run function blue:tr/effects/dune/geyser/cast