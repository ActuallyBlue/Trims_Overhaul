execute as b163102f-0-c-0-1 at @s run function blue:tr/effects/rib/skull/entity
execute as b163102f-0-d-0-1 unless predicate blue:shared/has_vehicle at @s run function blue:tr/effects/rib/skull/impact
execute at @e[type=area_effect_cloud,tag=blue.tr.rib_skull] positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,tag=!blue.tr.rib] run damage @s 6 wither_skull by @a[tag=blue.tr.rib,limit=1]
execute if entity @e[type=area_effect_cloud,tag=blue.tr.rib_skull,limit=1] run schedule function blue:tr/effects/rib/skull/loop 1t