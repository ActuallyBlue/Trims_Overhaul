scoreboard players add #.cast blue.misc 1
execute if score #.last_reversal_charge blue.misc matches 25..39 if block ~ ~ ~ #blue:trims/passable if score #.cast blue.misc matches ..90 rotated ~ ~1 positioned ^ ^-0.4 ^1.2 run function blue:tr/effects/spire/emp/plunge/cast
execute if score #.last_reversal_charge blue.misc matches 40..54 if block ~ ~ ~ #blue:trims/passable if score #.cast blue.misc matches ..90 rotated ~ ~0.95 positioned ^ ^-0.4 ^1.4 run function blue:tr/effects/spire/emp/plunge/cast
execute if score #.last_reversal_charge blue.misc matches 55..69 if block ~ ~ ~ #blue:trims/passable if score #.cast blue.misc matches ..90 rotated ~ ~0.9 positioned ^ ^-0.4 ^1.6 run function blue:tr/effects/spire/emp/plunge/cast
execute if score #.last_reversal_charge blue.misc matches 70.. if block ~ ~ ~ #blue:trims/passable if score #.cast blue.misc matches ..90 rotated ~ ~0.85 positioned ^ ^-0.4 ^1.8 run function blue:tr/effects/spire/emp/plunge/cast
particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 0.03 1 force @s[distance=12..]
particle enchanted_hit ~ ~ ~ 0.3 0.3 0.3 0.03 1 force @s[distance=16..,scores={blue.particles=2..}]
execute if block ~ ~ ~ #blue:trims/passable run return 0
execute if score #.last_reversal_charge blue.misc matches 25..39 run particle enchanted_hit ~ ~-2 ~ 1 3 1 0 15 force @s
execute if score #.last_reversal_charge blue.misc matches 40..54 run particle enchanted_hit ~ ~2 ~ 1.5 4 1.5 0 30 force @s
execute if score #.last_reversal_charge blue.misc matches 55..69 run particle enchanted_hit ~ ~6 ~ 2 5 2 0.05 60 force @s
execute if score #.last_reversal_charge blue.misc matches 70.. run particle enchanted_hit ~ ~18 ~ 2.5 6 2.5 0.16 75 force @s