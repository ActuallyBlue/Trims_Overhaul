scoreboard players add #.dune_sound blue.misc 1
execute if score #.dune_sound blue.misc matches 2 as @a[tag=blue.tr.dune] at @s run playsound item.brush.brushing.sand player @a[distance=..20] ~ ~ ~ 2.5 1.75
execute if score #.dune_sound blue.misc matches 5 as @a[tag=blue.tr.dune] at @s run playsound item.brush.brushing.sand player @a[distance=..20] ~ ~ ~ 2.5 1.5
execute if score #.dune_sound blue.misc matches 8 as @a[tag=blue.tr.dune] at @s run playsound item.brush.brushing.sand player @a[distance=..20] ~ ~ ~ 2.5 1.25
execute if score #.dune_sound blue.misc matches 10 as @a[tag=blue.tr.dune] at @s run playsound item.brush.brushing.sand player @a[distance=..20] ~ ~ ~ 2.5 0.75
execute if score #.dune_sound blue.misc matches 12 as @a[tag=blue.tr.dune] at @s run playsound item.brush.brushing.sand player @a[distance=..20] ~ ~ ~ 2.5 0.5
execute unless score #.dune_sound blue.misc matches 12.. run schedule function blue:tr/completion/z/sand 1t
execute if score #.dune_sound blue.misc matches 12.. run scoreboard players reset #.dune_sound blue.misc