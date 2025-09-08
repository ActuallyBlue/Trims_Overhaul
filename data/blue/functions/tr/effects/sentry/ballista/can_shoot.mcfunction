scoreboard players add #.sentry.charge blue.misc 1
execute if score #.sentry.charge blue.misc matches 9 run playsound block.smithing_table.use player @s ~ ~ ~ 0.5 1.25
execute if score #.sentry.charge blue.misc matches 21 run playsound block.smithing_table.use player @s ~ ~ ~ 0.5 1.5
execute if score #.sentry.charge blue.misc matches 33 run playsound block.smithing_table.use player @s ~ ~ ~ 0.5 1.75
execute if score #.sentry.charge blue.misc matches 45 run playsound block.smithing_table.use player @s ~ ~ ~ 0.5 2
execute if score #.sentry.charge blue.misc matches 9..20 run effect give @s slowness 1 1
execute if score #.sentry.charge blue.misc matches 21..32 run effect give @s slowness 1 3
execute if score #.sentry.charge blue.misc matches 33..44 run effect give @s slowness 1 5
execute if score #.sentry.charge blue.misc matches 45.. run effect give @s slowness 1 7
execute if score #.sentry.charge blue.misc matches 3.. run particle dust 0 0.5 0.6 0.2 ^0.00 ^0.30 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 6.. run particle dust 0 0.5 0.6 0.2 ^-0.12 ^0.28 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 9.. run particle dust 0 0.5 0.6 0.2 ^-0.21 ^0.21 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 12.. run particle dust 0 0.5 0.6 0.2 ^-0.28 ^0.12 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 15.. run particle dust 0 0.5 0.6 0.2 ^-0.30 ^0.00 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 18.. run particle dust 0 0.5 0.6 0.2 ^-0.28 ^-0.12 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 21.. run particle dust 0 0.5 0.6 0.2 ^-0.21 ^-0.21 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 24.. run particle dust 0 0.5 0.6 0.2 ^-0.12 ^-0.28 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 27.. run particle dust 0 0.5 0.6 0.2 ^0.00 ^-0.30 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 30.. run particle dust 0 0.5 0.6 0.2 ^0.12 ^-0.28 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 33.. run particle dust 0 0.5 0.6 0.2 ^0.21 ^-0.21 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 36.. run particle dust 0 0.5 0.6 0.2 ^0.28 ^-0.12 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 39.. run particle dust 0 0.5 0.6 0.2 ^0.30 ^0.00 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 42.. run particle dust 0 0.5 0.6 0.2 ^0.28 ^0.12 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 45.. run particle dust 0 0.5 0.6 0.2 ^0.21 ^0.21 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.charge blue.misc matches 48.. run particle dust 0 0.5 0.6 0.2 ^0.12 ^0.28 ^2.8 0.025 0.025 0.025 0 7
execute if score #.sentry.range blue.misc matches 64.. if score #.sentry.charge blue.misc matches 9.. run particle enchanted_hit ^-0.25 ^0.25 ^3 ^-900000 ^900000 ^-2000000 0.00000085 0 force
execute if score #.sentry.range blue.misc matches 64.. if score #.sentry.charge blue.misc matches 9.. run particle enchanted_hit ^-0.4 ^0.4 ^2.8 ^-850000 ^850000 ^-1900000 0.00000085 0
execute if score #.sentry.range blue.misc matches 76.. if score #.sentry.charge blue.misc matches 21.. run particle enchanted_hit ^-0.25 ^-0.25 ^3 ^-900000 ^-900000 ^-2000000 0.00000085 0 force
execute if score #.sentry.range blue.misc matches 76.. if score #.sentry.charge blue.misc matches 21.. run particle enchanted_hit ^-0.4 ^-0.4 ^2.8 ^-850000 ^-850000 ^-1900000 0.00000085 0
execute if score #.sentry.range blue.misc matches 88.. if score #.sentry.charge blue.misc matches 33.. run particle enchanted_hit ^0.25 ^-0.25 ^3 ^900000 ^-900000 ^-2000000 0.00000085 0 force
execute if score #.sentry.range blue.misc matches 88.. if score #.sentry.charge blue.misc matches 33.. run particle enchanted_hit ^0.4 ^-0.4 ^2.8 ^850000 ^-850000 ^-1900000 0.00000085 0
execute if score #.sentry.range blue.misc matches 100.. if score #.sentry.charge blue.misc matches 45.. run particle enchanted_hit ^0.25 ^0.25 ^3 ^900000 ^900000 ^-2000000 0.00000085 0 force
execute if score #.sentry.range blue.misc matches 100.. if score #.sentry.charge blue.misc matches 45.. run particle enchanted_hit ^0.4 ^0.4 ^2.8 ^850000 ^850000 ^-1900000 0.00000085 0
execute if score #.sentry.charge blue.misc matches 48.. positioned ^ ^ ^5 run function blue:tr/effects/sentry/ballista/pre_cast
scoreboard players reset #.sentry.range blue.misc
execute if predicate blue:tr/hero_0 run scoreboard players set #.sentry.range blue.misc 52
execute unless score #.sentry.range blue.misc matches 1.. if predicate blue:tr/hero_1 run scoreboard players set #.sentry.range blue.misc 64
execute unless score #.sentry.range blue.misc matches 1.. if predicate blue:tr/hero_2 run scoreboard players set #.sentry.range blue.misc 76
execute unless score #.sentry.range blue.misc matches 1.. if predicate blue:tr/hero_3 run scoreboard players set #.sentry.range blue.misc 88
execute unless score #.sentry.range blue.misc matches 1.. run scoreboard players set #.sentry.range blue.misc 100