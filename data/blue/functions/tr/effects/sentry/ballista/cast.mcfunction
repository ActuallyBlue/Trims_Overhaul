scoreboard players remove #.sentry.range blue.misc 1
execute unless block ~ ~ ~ #blue:trims/passable run function blue:tr/effects/sentry/ballista/collide
execute unless score #.sentry.range blue.misc matches 0 unless block ^ ^ ^0.375 #blue:trims/passable run function blue:tr/effects/sentry/ballista/collide
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#blue:tr/peaceful,dx=0] if score #.sentry.range blue.misc matches 1.. at @s run function blue:tr/effects/sentry/ballista/was_shot
execute positioned ^ ^ ^0.75 if score #.sentry.range blue.misc matches 1.. run function blue:tr/effects/sentry/ballista/cast
execute if entity @s[distance=..10] run particle dust 1 0 0 1
execute if entity @s[distance=..10] run return 0
scoreboard players add #.sentry.circle blue.misc 1
execute if score #.sentry.circle blue.misc matches 1..8 run function blue:tr/effects/sentry/ballista/low
execute if score #.sentry.circle blue.misc matches 9.. run function blue:tr/effects/sentry/ballista/high
scoreboard players add #.sentry.circle blue.misc 1
execute positioned ^ ^ ^-0.375 if score #.sentry.circle blue.misc matches 1..8 run function blue:tr/effects/sentry/ballista/low
execute positioned ^ ^ ^-0.375 if score #.sentry.circle blue.misc matches 9.. run function blue:tr/effects/sentry/ballista/high