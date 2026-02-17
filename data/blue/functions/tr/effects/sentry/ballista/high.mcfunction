execute if score #.sentry.circle blue.misc matches 9 run particle dust 0.0 0.5 0.6 1.25 ^ ^-0.30 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 10 run particle dust 0.0 0.5 0.6 1.5 ^0.12 ^-0.28 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 11 run particle dust 0.0 0.5 0.6 1.75 ^0.21 ^-0.21 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 12 run particle dust 0.0 0.5 0.6 2.0 ^0.28 ^-0.12 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 13 run particle dust 0.0 0.5 0.6 1.25 ^0.30 ^ ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 14 run particle dust 0.0 0.5 0.6 1.5 ^0.28 ^0.12 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 15 run particle dust 0.0 0.5 0.6 1.75 ^0.21 ^0.21 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 16 run particle dust 0.0 0.5 0.6 2.0 ^0.12 ^0.28 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 16.. as @a[distance=..8,tag=!blue.tr.sound_temp] run function blue:tr/effects/sentry/ballista/sound
execute if score #.sentry.circle blue.misc matches 16.. run scoreboard players reset #.sentry.circle blue.misc