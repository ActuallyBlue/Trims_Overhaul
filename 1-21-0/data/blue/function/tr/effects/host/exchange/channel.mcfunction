scoreboard players reset #.temp blue.misc
scoreboard players set #.host.exchange_channeling blue.misc 1
execute anchored eyes positioned ^ ^ ^0.5 run function blue:tr/effects/host/exchange/cast
execute unless score #.temp blue.misc matches 1 run scoreboard players reset #.exchange_channel blue.misc
execute if score #.exchange_channel blue.misc matches 10.. if score #.temp blue.misc matches 1 run particle ash ~ ~1.3 ~ 0.4 0.4 0.4 0 10
execute if score #.exchange_channel blue.misc matches 20.. if score #.temp blue.misc matches 1 run particle ash ~ ~1.3 ~ 0.4 0.4 0.4 0 14
execute unless score #.exchange_channel blue.misc matches 25.. run return fail
execute unless score #.temp blue.misc matches 1 run return run function blue:tr/effects/host/exchange/cancel
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.75 2
schedule function blue:tr/effects/host/exchange/cooldown 100t
scoreboard players reset #.host.exchange_channeling blue.misc
scoreboard players set #.host.exchange_cooldown blue.misc 1
scoreboard players reset #.exchange_channel blue.misc
effect give @s invisibility 4 0 true
execute at b163102f-0-b-0-1 run tp @s ~ ~ ~
kill b163102f-0-b-0-1