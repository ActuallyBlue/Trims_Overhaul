execute if entity @a[tag=blue.tr.sentry,distance=..10,limit=1] run return fail
execute if score #.temp blue.misc matches 215 run damage @s 25.25 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 195 run damage @s 21 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 170 run damage @s 16.75 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 145 run damage @s 12.5 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 120 run damage @s 8.25 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
scoreboard players remove #.sentry.range blue.misc 16
scoreboard players remove #.temp blue.misc 12
playsound block.anvil.land player @s ~ ~ ~ 0.5 1.75
particle crit ~ ~1 ~ 0.2 0.4 0.2 0.6 24