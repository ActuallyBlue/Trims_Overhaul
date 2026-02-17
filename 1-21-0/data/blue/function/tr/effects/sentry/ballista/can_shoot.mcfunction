scoreboard players operation #.sentry.charge blue.misc += #.sentry.charge_speed blue.config
execute if score #.sentry.charge blue.misc matches 90..209 run effect give @s slowness 1 1
execute if score #.sentry.charge blue.misc matches 210..329 run effect give @s slowness 1 3
execute if score #.sentry.charge blue.misc matches 330..449 run effect give @s slowness 1 5
execute if score #.sentry.charge blue.misc matches 450.. run effect give @s slowness 1 7
execute if score #.sentry.charge blue.misc matches 30.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^ ^0.30 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 60.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.12 ^0.28 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 90.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.21 ^0.21 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 120.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.28 ^0.12 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 150.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.30 ^ ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 180.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.28 ^-0.12 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 210.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.21 ^-0.21 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 240.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^-0.12 ^-0.28 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 270.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^ ^-0.30 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 300.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.12 ^-0.28 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 330.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.21 ^-0.21 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 360.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.28 ^-0.12 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 390.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.30 ^ ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 420.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.28 ^0.12 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 450.. run particle dust{color:[0f,0.5f,0.6f],scale:0.2} ^0.21 ^0.21 ^2.8 0.025 0.025 0.025 0 2
execute if score #.sentry.charge blue.misc matches 480.. run function blue:tr/effects/sentry/ballista/circle
execute if score #.sentry.range blue.misc matches 145.. if score #.sentry.charge blue.misc matches 90.. run particle enchanted_hit ^-0.25 ^0.25 ^3 ^-9000000 ^9000000 ^-20000000 0.000000085 0 force
execute if score #.sentry.range blue.misc matches 145.. if score #.sentry.charge blue.misc matches 90.. run particle enchanted_hit ^-0.4 ^0.4 ^2.8 ^-8500000 ^8500000 ^-19000000 0.000000085 0
execute if score #.sentry.range blue.misc matches 170.. if score #.sentry.charge blue.misc matches 210.. run particle enchanted_hit ^-0.25 ^-0.25 ^3 ^-9000000 ^-9000000 ^-20000000 0.000000085 0 force
execute if score #.sentry.range blue.misc matches 170.. if score #.sentry.charge blue.misc matches 210.. run particle enchanted_hit ^-0.4 ^-0.4 ^2.8 ^-8500000 ^-8500000 ^-19000000 0.000000085 0
execute if score #.sentry.range blue.misc matches 195.. if score #.sentry.charge blue.misc matches 330.. run particle enchanted_hit ^0.25 ^-0.25 ^3 ^9000000 ^-9000000 ^-20000000 0.000000085 0 force
execute if score #.sentry.range blue.misc matches 195.. if score #.sentry.charge blue.misc matches 330.. run particle enchanted_hit ^0.4 ^-0.4 ^2.8 ^8500000 ^-8500000 ^-19000000 0.000000085 0
execute if score #.sentry.range blue.misc matches 215 if score #.sentry.charge blue.misc matches 450.. run particle enchanted_hit ^0.25 ^0.25 ^3 ^9000000 ^9000000 ^-20000000 0.000000085 0 force
execute if score #.sentry.range blue.misc matches 215 if score #.sentry.charge blue.misc matches 450.. run particle enchanted_hit ^0.4 ^0.4 ^2.8 ^8500000 ^8500000 ^-19000000 0.000000085 0
execute if score #.sentry.charge blue.misc matches 480.. positioned ^ ^ ^5 run function blue:tr/effects/sentry/ballista/pre_cast
scoreboard players set #.sentry.range blue.misc 120
execute if score #.sentry.range blue.misc matches 120 if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"hero_of_the_village":{amplifier:1}}}} run scoreboard players set #.sentry.range blue.misc 145
execute if score #.sentry.range blue.misc matches 120 if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"hero_of_the_village":{amplifier:2}}}} run scoreboard players set #.sentry.range blue.misc 170
execute if score #.sentry.range blue.misc matches 120 if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"hero_of_the_village":{amplifier:3}}}} run scoreboard players set #.sentry.range blue.misc 195
execute if score #.sentry.range blue.misc matches 120 if predicate {condition:"entity_properties",entity:"this",predicate:{effects:{"hero_of_the_village":{amplifier:{min:4}}}}} run scoreboard players set #.sentry.range blue.misc 215
execute if score #.sentry.charge blue.misc matches 90.. unless score #.sentry.sound blue.misc matches 2.. if score #.sentry.range blue.misc matches 145.. run playsound block.smithing_table.use player @a ~ ~ ~ 0.5 1.25
execute if score #.sentry.charge blue.misc matches 90.. unless score #.sentry.sound blue.misc matches 2.. run scoreboard players set #.sentry.sound blue.misc 2
execute if score #.sentry.charge blue.misc matches 210.. unless score #.sentry.sound blue.misc matches 3.. if score #.sentry.range blue.misc matches 170.. run playsound block.smithing_table.use player @a ~ ~ ~ 0.55 1.5
execute if score #.sentry.charge blue.misc matches 210.. unless score #.sentry.sound blue.misc matches 3.. run scoreboard players set #.sentry.sound blue.misc 3
execute if score #.sentry.charge blue.misc matches 330.. unless score #.sentry.sound blue.misc matches 4.. if score #.sentry.range blue.misc matches 195.. run playsound block.smithing_table.use player @a ~ ~ ~ 0.6 1.75
execute if score #.sentry.charge blue.misc matches 330.. unless score #.sentry.sound blue.misc matches 4.. run scoreboard players set #.sentry.sound blue.misc 4
execute if score #.sentry.charge blue.misc matches 450.. unless score #.sentry.sound blue.misc matches 5.. if score #.sentry.range blue.misc matches 215 run playsound block.smithing_table.use player @a ~ ~ ~ 0.65 2
execute if score #.sentry.charge blue.misc matches 450.. unless score #.sentry.sound blue.misc matches 5.. run scoreboard players set #.sentry.sound blue.misc 5