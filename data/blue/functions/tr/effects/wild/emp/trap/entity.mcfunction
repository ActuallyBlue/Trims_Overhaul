scoreboard players set #.temp blue.misc -5224
execute as @a[distance=..1.25,tag=!blue.tr.wild.cd,advancements={blue:tr/trust={wild=false}},gamemode=!spectator,gamemode=!creative,limit=1] positioned ~-1.5 ~-1 ~-1.5 at @s[dy=1,dx=2,dz=2] run function blue:tr/effects/wild/emp/trap/activated
execute unless block ~ ~-0.3 ~ grass_block run function blue:tr/effects/wild/emp/trap/broken
particle dust_color_transition 0.1 0.7 0.2 0.4 0 0.4 0 ~ ~0.1 ~ 0.3 0.3 0.3 0 1
particle dust_color_transition 0.1 0.9 0.2 0.7 0 0.6 0 ~ ~0.1 ~ 0.25 0.05 0.25 0 2 normal @a[tag=blue.tr.wild,advancements={blue:tr/trust={wild=true}},scores={blue.particles=1..},limit=1]
execute if score #.temp blue.misc matches -5224 run return 0
schedule function blue:tr/effects/wild/emp/trap/bind-loop 1t
scoreboard players operation @s blue.id = #.temp blue.misc
tag @s add blue.tr.wild.bind-entity
tag @s remove blue.tr.wild.trap
tp @s ~ ~ ~ 0 90