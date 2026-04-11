scoreboard players reset #.temp blue.misc
scoreboard players set #.host.exchange_channeling blue.misc 1
execute anchored eyes positioned ^ ^ ^0.5 run function blue:tr/effects/host/exchange/cast
execute unless score #.temp blue.misc matches 1 run scoreboard players reset #.host.exchange_channel blue.misc
execute if score #.host.exchange_channel blue.misc matches 10.. if score #.temp blue.misc matches 1 run particle ash ~ ~1.3 ~ 0.3 0.4 0.3 0 6
execute if score #.host.exchange_channel blue.misc matches 25.. if score #.temp blue.misc matches 1 run particle ash ~ ~1.3 ~ 0.3 0.4 0.3 0 10
execute unless score #.host.exchange_channel blue.misc matches 35.. run return fail
execute unless score #.temp blue.misc matches 1 run return run function blue:tr/effects/host/exchange/cancel
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.75 2
schedule function blue:tr/effects/host/exchange/cooldown 140t
scoreboard players reset #.host.exchange_channeling blue.misc
scoreboard players set #.host.exchange_cooldown blue.misc 1
scoreboard players reset #.host.exchange_channel blue.misc
effect give @s invisibility 4 0 true
particle ash ~ ~1 ~ 0.35 0.5 0.35 0 100
execute at b163102f-0-b-0-1 run tp @s ~ ~ ~
kill b163102f-0-b-0-1