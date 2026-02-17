particle dust 0.9 0.8 0.6 1.6 ~ ~0.1 ~ 3 1.5 3 0 40
particle dust 0.9 0.8 0.6 1.6 ~ ~0.1 ~ 3 1.5 3 0 20 force
execute as @e[type=ender_pearl,distance=..9] at @s on origin if entity @s[advancements={blue:tr/trust={dune=true}}] run data merge entity @e[type=ender_pearl,distance=..0.01,limit=1] {Item:{id:"minecraft:birch_button",CustomModelData:200600,Count:1b},Tags:["blue.tr.dune_thrown"]}
execute at @e[tag=blue.tr.dune_thrown,type=ender_pearl] run particle dust 0.9 0.8 0.6 0.3 ~ ~0.1 ~ 0.1 0.1 0.1 0 10 force
execute unless score #.temp blue.misc matches 3 run particle dust 0.9 0.8 0.6 1.6 ~ ~0.1 ~ 3 1.5 3 0 30 normal @a[scores={blue.particles=2..}]
execute unless score #.temp blue.misc matches 3 run particle dust 0.9 0.8 0.6 1.6 ~ ~0.1 ~ 3 1.5 3 0 90 normal @a[advancements={blue:tr/trust={dune=false}}]
execute if score #.temp blue.misc matches 1 run particle dust 0.9 0.8 0.6 1.2 ~ ~0.1 ~ 1.5 0.75 1.5 0 60 normal @a[advancements={blue:tr/trust={dune=false}}]
scoreboard players add @s blue.misc 1
execute unless score @s blue.misc matches 110.. run return 0
playsound block.soul_sand.place player @a ~ ~ ~ 2.5 0.5
playsound block.soul_sand.place player @a ~ ~ ~ 2.5 0.5
kill