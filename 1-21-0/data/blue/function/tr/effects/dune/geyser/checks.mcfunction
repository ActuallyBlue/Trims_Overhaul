schedule function blue:tr/effects/dune/geyser/checks 1t
execute as @e[type=area_effect_cloud,tag=blue.tr.dune_geyser] at @s run function blue:tr/effects/dune/geyser/cloud
execute unless entity @e[type=area_effect_cloud,tag=blue.tr.dune_geyser,limit=1] run schedule clear blue:tr/effects/dune/geyser/checks