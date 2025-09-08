execute if score @s blue.tr.damage_blocked matches 400.. positioned ^1.5 ^1.5 ^2 facing ^ ^-1 ^ run function blue:tr/effects/ward/kinetic/barrier/cast
execute if score @s blue.tr.damage_blocked matches 800.. store success score #.cast blue.misc run scoreboard players remove #.temp blue.misc 400
execute if score @s blue.tr.damage_blocked matches 800.. positioned ^1.5 ^-1.5 ^2 facing ^-1 ^ ^ run function blue:tr/effects/ward/kinetic/barrier/cast
execute if score @s blue.tr.damage_blocked matches 1200.. store success score #.cast blue.misc run scoreboard players remove #.temp blue.misc 400
execute if score @s blue.tr.damage_blocked matches 1200.. positioned ^-1.5 ^-1.5 ^2 facing ^ ^1 ^ run function blue:tr/effects/ward/kinetic/barrier/cast
execute if score @s blue.tr.damage_blocked matches 1600.. store success score #.cast blue.misc run scoreboard players remove #.temp blue.misc 400
execute if score @s blue.tr.damage_blocked matches 1600.. positioned ^-1.5 ^1.5 ^2 facing ^1 ^ ^ run function blue:tr/effects/ward/kinetic/barrier/cast