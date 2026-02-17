schedule function blue:tr/effects/dune/geyser/checks 1t
execute as @e[tag=blue.tr.dune_geyser,type=area_effect_cloud] at @s run function blue:tr/effects/dune/geyser/cloud
execute unless entity @e[tag=blue.tr.dune_geyser,limit=1,type=area_effect_cloud] run schedule clear blue:tr/effects/dune/geyser/checks