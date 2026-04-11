execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=blue.tr.host.morale,limit=1] at @s run function blue:tr/effects/host/exchange/swapable
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[dx=0,tag=blue.tr.host.morale,limit=1] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^0.5 if entity @s[distance=..20] run function blue:tr/effects/host/exchange/cast
execute unless entity @s[distance=..18] run return 0
execute positioned ^ ^ ^-0.25 run particle dust 1 0.6 0.5 0.05 ~ ~-0.2 ~ 0 0 0 0 2 force @a[advancements={blue:tr/trust={host=true}},scores={blue.particles=1..},distance=1..,limit=1]
particle dust 1 0.6 0.5 0.05 ~ ~-0.2 ~ 0 0 0 0 2 force @a[advancements={blue:tr/trust={host=true}},distance=1..,limit=1]