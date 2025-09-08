execute store result score #.temp blue.misc if entity @e[type=marker,tag=blue.tr.dune_sandstorm,limit=3]
execute if score #.temp blue.misc matches ..2 run particle dust 0.9 0.8 0.6 1.5 ~ ~ ~ 3 3 3 0.1 70 normal @a[scores={blue.particles=2..},advancements={blue:tr/trust={dune=false}}]
execute if score #.temp blue.misc matches 3 run particle dust 0.9 0.8 0.6 1.5 ~ ~ ~ 3 3 3 0.1 50
execute unless score #.temp blue.misc matches 3 run particle dust 0.9 0.8 0.6 1.5 ~ ~ ~ 3 3 3 0.1 80
execute if score #.temp blue.misc matches 1 run particle dust 0.9 0.8 0.6 1.1 ~ ~ ~ 1.5 1.5 1.5 0.1 60 normal @a[advancements={blue:tr/trust={dune=false}}]
schedule function blue:tr/effects/dune/sandstorm/loop 1t
scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=110..}]