scoreboard players add #.cast blue.misc 1
execute store success score #.temp blue.misc if score #.temp blue.misc matches 0
execute if score #.temp blue.misc matches 1 facing entity @s feet run particle end_rod ^ ^0.8 ^ ^ ^20000 ^-90000 0.000008 0 normal @a[scores={blue.particles=1..}]
execute if score #.temp blue.misc matches 0 facing entity @s feet run particle end_rod ^ ^0.8 ^ ^ ^20000 ^-90000 0.000008 0
execute if score #.cast blue.misc matches ..60 positioned ^ ^ ^0.06 rotated ~6 ~ run function blue:tr/effects/spire/emp/reversal/cast_five