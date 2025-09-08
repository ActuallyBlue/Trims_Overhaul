execute if score #.sentry.circle blue.misc matches 1 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^0.00 ^0.30 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 2 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.12 ^0.28 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 3 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.21 ^0.21 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 4 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.28 ^0.12 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 5 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.30 ^0.00 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 6 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.28 ^-0.12 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 7 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.21 ^-0.21 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 8 run particle dust{color:[0.0f,0.5f,0.6f],scale:1} ^-0.12 ^-0.28 ^2.0 0.01 0.01 0.01 0 2
execute if score #.sentry.circle blue.misc matches 8.. as @a[distance=..8,tag=!blue.tr.sound_temp] run function blue:tr/effects/sentry/ballista/sound