scoreboard players set #.temp blue.misc -5224
execute as @a[distance=..1.25,tag=!blue.tr.wild.cd,advancements={blue:tr/trust={wild=false}},gamemode=!spectator,gamemode=!creative,limit=1] positioned ~-1.5 ~-1 ~-1.5 at @s[dy=1,dx=2,dz=2] run function blue:tr/effects/wild/emp/trap/activated
execute unless block ~ ~-0.3 ~ grass_block run return run function blue:tr/effects/wild/emp/trap/broken
particle dust_color_transition{from_color:[0.1f,0.7f,0.2f],scale:0.4f,to_color:[0f,0.4f,0f]} ~ ~0.1 ~ 0.3 0.3 0.3 0 1
particle dust_color_transition{from_color:[0.1f,0.9f,0.2f],scale:0.7f,to_color:[0f,0.6f,0f]} ~ ~0.1 ~ 0.25 0.05 0.25 0 2 normal @a[tag=blue.tr.wild,advancements={blue:tr/trust={wild=true}},scores={blue.particles=1..},limit=1]
execute if score #.temp blue.misc matches -5224 run return fail
schedule function blue:tr/effects/wild/emp/trap/bind-loop 1t
scoreboard players operation @s blue.id = #.temp blue.misc
tag @s add blue.tr.wild.bind-entity
tag @s remove blue.tr.wild.trap
tp @s ~ ~ ~ 0 90