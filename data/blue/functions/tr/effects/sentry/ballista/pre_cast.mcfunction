scoreboard players remove #.sentry.range blue.misc 1
execute if score #.sentry.range blue.misc matches ..0 run particle enchanted_hit ~ ~ ~ 0.1 0.1 0.1 0 10 force @s
execute unless block ~ ~ ~ #blue:trims/passable unless score #.sentry.range blue.misc matches ..0 run function blue:tr/effects/sentry/ballista/point
execute unless block ^ ^ ^0.375 #blue:trims/passable unless score #.sentry.range blue.misc matches ..0 run function blue:tr/effects/sentry/ballista/point
execute unless score #.sentry.range blue.misc matches ..0 positioned ^ ^ ^0.75 run function blue:tr/effects/sentry/ballista/pre_cast