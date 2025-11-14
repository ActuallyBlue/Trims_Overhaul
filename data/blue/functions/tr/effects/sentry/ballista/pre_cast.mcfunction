scoreboard players remove #.sentry.range blue.misc 1
execute if score #.sentry.range blue.misc matches ..0 run particle dust 1 0 0 0.7 ^ ^ ^-0.75 0.25 0.25 0.25 0 24 force
execute unless block ~ ~ ~ #blue:shared/passable unless score #.sentry.range blue.misc matches ..0 run function blue:tr/effects/sentry/ballista/point
execute unless block ^ ^ ^0.375 #blue:shared/passable unless score #.sentry.range blue.misc matches ..0 run function blue:tr/effects/sentry/ballista/point
execute unless score #.sentry.range blue.misc matches ..0 positioned ^ ^ ^0.75 run function blue:tr/effects/sentry/ballista/pre_cast