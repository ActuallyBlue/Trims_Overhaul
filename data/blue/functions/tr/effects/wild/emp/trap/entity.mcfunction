execute as @a[distance=..1.25,tag=!blue.tr.wild.cd,advancements={blue:tr/trust={wild=false}},gamemode=!spectator,gamemode=!creative,limit=1] positioned ~-1.5 ~-1 ~-1.5 at @s[dy=1,dx=2,dz=2] run function blue:tr/effects/wild/emp/trap/activated
execute unless block ~ ~-0.3 ~ grass_block run function blue:tr/effects/wild/emp/trap/broken
execute if score #.20 blue.misc matches 10 run particle dust_color_transition 0.1 0.7 0.2 0.7 0 0.4 0 ~ ~0.2 ~ 0.3 0.35 0.3 0 3
particle dust_color_transition 0.1 0.9 0.2 0.7 0 0.6 0 ~ ~0.1 ~ 0.25 0.05 0.25 0 2 normal @a[tag=blue.tr.wild,advancements={blue:tr/trust={wild=true}},scores={blue.particles=1..},limit=1]
execute unless score #.trap_activated blue.misc matches 1.. run return 0
scoreboard players reset #.trap_activated blue.misc
kill