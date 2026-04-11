execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=blue.tr.host.morale,limit=1] at @s run return run function blue:tr/effects/host/exchange/swapable
execute positioned ^ ^ ^0.5 if entity @s[distance=..20] run function blue:tr/effects/host/exchange/cast
execute unless entity @s[distance=..18] run return fail
execute positioned ^ ^ ^-0.25 run particle dust{color:[1f,0.6f,0.5f],scale:0.05} ~ ~-0.2 ~ 0 0 0 0 2 force @a[advancements={blue:tr/trust={host=true}},scores={blue.particles=1..},distance=1..,limit=1]
particle dust{color:[1f,0.6f,0.5f],scale:0.05} ~ ~-0.2 ~ 0 0 0 0 2 force @a[advancements={blue:tr/trust={host=true}},distance=1..,limit=1]