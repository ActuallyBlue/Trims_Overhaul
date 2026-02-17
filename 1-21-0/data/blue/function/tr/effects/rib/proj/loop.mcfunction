execute as b163102f-0-c-0-1 at @s run function blue:tr/effects/rib/proj/entity
execute as b163102f-0-d-0-1 unless predicate blue:shared/has_vehicle at @s run function blue:tr/effects/rib/proj/impact
execute at @e[tag=blue.tr.rib_skull,type=area_effect_cloud] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,tag=!blue.tr.rib] run damage @s 8 wither_skull by @a[tag=blue.tr.rib,limit=1]
execute if entity @e[tag=blue.tr.rib_skull,limit=1,type=area_effect_cloud] run schedule function blue:tr/effects/rib/proj/loop 1t