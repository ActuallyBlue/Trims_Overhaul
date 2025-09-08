scoreboard players add #.cast blue.misc 16
particle electric_spark ~ ~ ~ 0 0 0 0 1 normal @s
execute positioned ^ ^ ^0.06 run particle electric_spark ~ ~ ~ 0 0 0 0 1 normal @s[scores={blue.particles=2..}]
execute positioned ^ ^ ^0.12 unless score #.cast blue.misc matches 391.. if score #.temp blue.misc >= #.cast blue.misc run function blue:tr/effects/ward/kinetic/barrier/cast