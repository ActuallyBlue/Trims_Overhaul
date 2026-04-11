execute if entity @a[tag=blue.tr.sentry,distance=..9,limit=1] run return fail
scoreboard players set #.temp0 blue.misc 0
execute if score #.temp blue.misc matches 225 store success score #.temp0 blue.misc run damage @s 25.25 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 200 store success score #.temp0 blue.misc run damage @s 21 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 175 store success score #.temp0 blue.misc run damage @s 16.75 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 150 store success score #.temp0 blue.misc run damage @s 12.5 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp blue.misc matches 125 store success score #.temp0 blue.misc run damage @s 8.25 blue:tr/ballista by @a[tag=blue.tr.sentry,limit=1]
execute if score #.temp0 blue.misc matches 0 run return fail
execute unless score #.temp blue.misc matches 125 run scoreboard players remove #.temp blue.misc 25
scoreboard players remove #.sentry.range blue.misc 30
playsound block.anvil.land player @s ~ ~ ~ 0.5 1.75
particle crit ~ ~1 ~ 0.2 0.4 0.2 0.6 24