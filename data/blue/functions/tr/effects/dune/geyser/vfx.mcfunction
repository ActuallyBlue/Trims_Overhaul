execute unless block ~ ~ ~ #blue:trims/passable run function blue:tr/effects/dune/geyser/quiet_vfx
execute unless block ~ ~ ~ #blue:trims/passable run return 0
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. positioned ~-1.5 ~ ~-1.5 as @a[advancements={blue:tr/trust={dune=false}},dx=2,dy=4,dz=2] run damage @s 6 on_fire by @a[tag=blue.tr.dune,limit=1]
execute unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. run playsound block.lava.pop player @a[advancements={blue:tr/trust={dune=false}}] ~ ~0.25 ~ 0.8 0.8
particle flame ~ ~0.6 ~ 0.2 1.8 0.2 0 6 normal @a[advancements={blue:tr/trust={dune=false}}]
particle lava ~ ~-0.5 ~ 0 0.5 0 0 1 normal @a[advancements={blue:tr/trust={dune=false}}]
execute positioned ~-1.5 ~ ~-1.5 run effect give @a[advancements={blue:tr/trust={dune=true}},dx=2,dy=4,dz=2,predicate=!blue:shared/has_regen] regeneration 3 1 true
execute if score #.20 blue.misc matches 1 run playsound weather.rain player @a[advancements={blue:tr/trust={dune=true}}] ~ ~0.25 ~ 0.4 1.6
particle splash ~ ~0.6 ~ 0.1 1.8 0.1 0 48 normal @a[advancements={blue:tr/trust={dune=true}}]
particle rain ~ ~0.1 ~ 0.25 0.2 0.25 0 20 normal @a[advancements={blue:tr/trust={dune=true}}]
execute positioned ~-0.5 ~ ~-0.5 run effect give @a[dy=1] slow_falling 1 0 true
tp @s ~ ~ ~ ~2 ~