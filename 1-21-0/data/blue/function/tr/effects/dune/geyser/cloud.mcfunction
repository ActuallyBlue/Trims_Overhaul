execute unless entity @s[tag=blue.tr.activate] if entity @e[type=falling_block,tag=blue.tr.dune_block,dy=3,limit=1] run tag @s add blue.tr.activate
execute if entity @s[tag=blue.tr.activate] unless score @s blue.misc matches 1.. unless entity @e[type=falling_block,tag=blue.tr.dune_block,dy=10,limit=1] positioned ~0.5 ~ ~0.5 run function blue:tr/effects/dune/geyser/create
execute if block ~ ~ ~ sand run return fail
execute positioned ~0.5 ~ ~0.5 as @e[type=falling_block,distance=..0.15,tag=!smithed.entity,limit=1] align xz run function blue:tr/effects/dune/raisure/wall
kill