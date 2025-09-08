scoreboard players add #.cast blue.misc 1
execute store success score #.temp blue.misc if score #.temp blue.misc matches 0
execute if score #.temp blue.misc matches 1 facing entity @s feet run particle end_rod ^ ^0.6 ^ ^ ^ ^-100000 0.000005 0 normal @a[scores={blue.particles=1..}]
execute if score #.temp blue.misc matches 0 facing entity @s feet run particle end_rod ^ ^0.6 ^ ^ ^ ^-100000 0.000005 0
execute if score #.cast blue.misc matches ..119 positioned ^ ^ ^0.03 rotated ~3 ~ run function blue:tr/effects/spire/emp/reversal/cast_three