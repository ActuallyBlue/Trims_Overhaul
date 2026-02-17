scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/dune/geyser/loop 1t
execute if score @s blue.misc matches 2 run tp @s ~ ~0.37 ~
execute unless score @s blue.misc matches 12.. run return 0
execute unless score @s blue.misc matches 270.. run function blue:tr/effects/dune/geyser/vfx
execute unless score @s blue.misc matches 280.. run return 0
particle item suspicious_sand ~ ~ ~ 0.3 0.3 0.3 0.12 48
particle falling_dust sand ~ ~ ~ 0.6 0.3 0.6 0 40
playsound block.sand.break player @a ~ ~ ~ 2 0.5
playsound block.sand.break player @a ~ ~ ~ 2 1
execute on passengers run kill
kill