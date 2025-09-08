scoreboard players add #.cast blue.misc 20
particle electric_spark ~ ~0.25 ~ 0 0 0 0 1
execute rotated ~4.5 ~ positioned ^ ^ ^0.09 run particle electric_spark ~ ~0.25 ~ 0 0 0 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.temp blue.misc >= #.cast blue.misc if score #.cast blue.misc matches ..1600 positioned ^ ^ ^-0.18 rotated ~-4.5 ~ run function blue:tr/effects/ward/kinetic/field/preview