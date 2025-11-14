execute if entity @s[tag=blue.tr.dune_tossed] store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
particle falling_dust sand ~ ~0.5 ~ 0.25 0.2 0.25 0 1
particle falling_dust sand ~ ~0.5 ~ 0.25 0.2 0.25 0 1 normal @a[scores={blue.particles=1..}]
schedule function blue:tr/effects/dune/raisure/loop 1t
scoreboard players add @s blue.misc 1
execute unless score @s blue.misc matches 10.. run return 0
execute store success score #.temp blue.misc if entity @s[tag=blue.tr.dune.no_sandstorm,tag=!blue.tr.dune_tossed]
execute if score #.temp blue.misc matches 1 if score @s blue.misc matches 22.. run kill
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,gamemode=!creative,gamemode=!spectator] run function blue:tr/effects/dune/raisure/hit
execute unless score #.temp blue.misc matches -592 positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#blue:shared/peaceful,type=!player,dx=0] run function blue:tr/effects/dune/raisure/hit
execute unless score #.temp blue.misc matches -592 run return 0
particle item suspicious_sand ~ ~0.5 ~ 0.3 0.25 0.3 0.1 48
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 1.5 1
playsound block.suspicious_sand.place player @a
execute on passengers run kill
kill