scoreboard players remove #.sentry.range blue.misc 1
execute if score #.sentry.range blue.misc matches ..0 run return run particle dust{color:[1f,0f,0f],scale:0.7} ^ ^ ^-0.75 0.4 0.4 0.4 0 24 force
execute unless block ~ ~ ~ #blue:shared/passable run return run function blue:tr/effects/sentry/ballista/point
execute unless block ^ ^ ^0.375 #blue:shared/passable run return run function blue:tr/effects/sentry/ballista/point
execute positioned ^ ^ ^0.75 run function blue:tr/effects/sentry/ballista/pre_cast