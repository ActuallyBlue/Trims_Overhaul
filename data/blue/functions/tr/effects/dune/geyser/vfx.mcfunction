particle poof ~ ~-0.8 ~
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. run playsound block.sand.break player @a ~ ~ ~ 0.5 0.5
execute unless block ~ ~ ~ #blue:shared/passable run function blue:tr/effects/dune/geyser/quiet_vfx
execute unless block ~ ~ ~ #blue:shared/passable run return 0
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. positioned ~-1.5 ~ ~-1.5 as @a[advancements={blue:tr/trust={dune=false}},dx=2,dy=4,dz=2] run damage @s 6 on_fire by @a[tag=blue.tr.dune,limit=1]
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. run playsound block.lava.pop player @a[advancements={blue:tr/trust={dune=false}}] ~ ~0.25 ~ 0.8 0.8
particle flame ~ ~0.6 ~ 0.14 1.2 0.14 0.001 8 normal @a[advancements={blue:tr/trust={dune=false}}]
particle flame ~ ~0.3 ~ 0.17 0.3 0.17 0.005 4 normal @a[advancements={blue:tr/trust={dune=false}},scores={blue.particles=1..}]
particle small_flame ~ ~0.7 ~ 0.175 1.4 0.175 0 4 normal @a[advancements={blue:tr/trust={dune=false}},scores={blue.particles=2..}]
particle smoke ~ ~1 ~ 0.2 0.5 0.2 0 3 normal @a[advancements={blue:tr/trust={dune=false}}]
execute if score #.20 blue.misc matches 1 run playsound weather.rain player @a[advancements={blue:tr/trust={dune=true}}] ~ ~0.25 ~ 0.4 1.6
execute positioned ~-1.5 ~ ~-1.5 run effect give @a[advancements={blue:tr/trust={dune=true}},dx=2,dy=4,dz=2,predicate=!blue:shared/has_regen] regeneration 3 1 true
particle splash ~ ~0.6 ~ 0.08 1.5 0.08 0 40 normal @a[advancements={blue:tr/trust={dune=true}}]
particle splash ~ ~0.5 ~ 0.1 0.6 0.1 0 12 normal @a[advancements={blue:tr/trust={dune=true}},scores={blue.particles=2..}]
particle rain ~ ~0.1 ~ 0.225 0.25 0.225 0 26 normal @a[advancements={blue:tr/trust={dune=true}},scores={blue.particles=1..}]
execute positioned ~-0.5 ~ ~-0.5 run effect give @a[dy=1] slow_falling 1 0 true
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. run particle cloud ~ ~0.2 ~ 0 100000 0 0.0000015 0