scoreboard players set #.sentry.range blue.misc 0
execute if entity @s[distance=..9] run particle dust 1 0 0 0.4 ^ ^ ^-0.75 0 0 0 0 4 force
execute if entity @s[distance=..9] run return 0
particle composter ^ ^ ^-0.25 0 0 0 0 2 force @s
particle composter ^ ^ ^-0.75 0 0 0 0 2 force @s
particle composter ^ ^ ^-1.25 0 0 0 0 2 force @s
particle composter ^ ^ ^-1.75 0 0 0 0 2 force @s