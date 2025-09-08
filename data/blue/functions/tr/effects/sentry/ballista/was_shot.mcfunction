execute if entity @a[tag=blue.tr.sentry,distance=..10,limit=1] run return 0
execute if score #.temp blue.misc matches 100 run damage @s 24 arrow by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 88 run damage @s 20 arrow by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 76 run damage @s 16 arrow by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 64 run damage @s 12 arrow by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 52 run damage @s 8 arrow by @a[tag=blue.tr.sentry,limit=1]
scoreboard players remove #.sentry.range blue.misc 16
scoreboard players remove #.temp blue.misc 12
playsound block.anvil.land player @s ~ ~ ~ 0.5 1.75
particle crit ~ ~1 ~ 0.2 0.4 0.2 0.6 24