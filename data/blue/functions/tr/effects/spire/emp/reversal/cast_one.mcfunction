scoreboard players add #.cast blue.misc 1
execute store success score #.temp blue.misc if score #.temp blue.misc matches 0
execute if score #.temp blue.misc matches 1 facing entity @s feet run particle end_rod ^ ^0.2 ^ ^ ^ ^-100000 0.0000015 0 normal @a[scores={blue.particles=1..}]
execute if score #.temp blue.misc matches 0 facing entity @s feet run particle end_rod ^ ^0.2 ^ ^ ^ ^-100000 0.0000015 0
execute if score #.cast blue.misc matches ..59 positioned ^ ^ ^0.06 rotated ~6 ~ run function blue:tr/effects/spire/emp/reversal/cast_one