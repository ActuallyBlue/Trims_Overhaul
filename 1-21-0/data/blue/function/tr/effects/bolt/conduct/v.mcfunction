execute at @s[distance=..1] run return run function blue:tr/effects/bolt/destroy
execute positioned ^ ^ ^-3 at @s[distance=..3] run return run function blue:tr/effects/bolt/destroy
particle electric_spark
scoreboard players add #.vPos blue.misc 1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[dx=0,tag=!blue.tr.hit,gamemode=!spectator,gamemode=!creative] positioned ~0.25 ~0.25 ~0.25 at @s[dx=0] run function blue:tr/effects/bolt/conduct/hit
execute unless block ~ ~ ~ #blue:shared/passable unless block ~ ~ ~ #blue:shared/copper_blocks run scoreboard players add #.zap_steps blue.misc 4
scoreboard players add #.zap_steps blue.misc 1
execute if score #.zap_steps blue.misc matches 60.. at @s run return run function blue:tr/effects/bolt/destroy
execute store result score #.temp blue.misc run random value 1..4
execute if score #.temp blue.misc matches 1 rotated ~-50 ~ positioned ^ ^ ^0.3 rotated ~50 ~ run return run function blue:tr/effects/bolt/conduct/h
execute if score #.temp blue.misc matches 2 rotated ~50 ~ positioned ^ ^ ^0.3 rotated ~-50 ~ run return run function blue:tr/effects/bolt/conduct/-h
execute if score #.temp blue.misc matches 3 rotated ~ ~-50 positioned ^ ^ ^0.3 rotated ~ ~50 run return run function blue:tr/effects/bolt/conduct/v
execute if score #.temp blue.misc matches 4 rotated ~ ~50 positioned ^ ^ ^0.3 rotated ~ ~-50 run function blue:tr/effects/bolt/conduct/-v