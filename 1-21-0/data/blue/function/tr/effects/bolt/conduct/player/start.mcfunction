scoreboard players set #.vPos blue.misc 0
scoreboard players set #.hPos blue.misc 0
scoreboard players set #.zap_steps blue.misc 1
playsound entity.firework_rocket.twinkle player @a[distance=..8] ~ ~ ~ 0.75 1.25
playsound entity.firework_rocket.twinkle player @a[distance=8.01..24] ~ ~ ~ 1.5 1.25
execute store result score #.temp blue.misc run random value 1..4
tag @a[tag=!blue.tr.bolt,advancements={blue:tr/trust={bolt=true}}] add blue.tr.hit
execute if score #.temp blue.misc matches 1 rotated ~-50 ~ positioned ^ ^ ^0.2 rotated ~50 ~ run function blue:tr/effects/bolt/conduct/player/h
execute if score #.temp blue.misc matches 2 rotated ~50 ~ positioned ^ ^ ^0.2 rotated ~-50 ~ run function blue:tr/effects/bolt/conduct/player/-h
execute if score #.temp blue.misc matches 3 rotated ~ ~-50 positioned ^ ^ ^0.2 rotated ~ ~50 run function blue:tr/effects/bolt/conduct/player/v
execute if score #.temp blue.misc matches 4 rotated ~ ~50 positioned ^ ^ ^0.2 rotated ~ ~-50 run function blue:tr/effects/bolt/conduct/player/-v
tag @a[tag=blue.tr.hit] remove blue.tr.hit