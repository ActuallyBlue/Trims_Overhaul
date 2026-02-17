scoreboard players add #.temp blue.misc 1
execute unless block ~ ~ ~ #blue:trims/sproutable[age=0] if score #.temp blue.misc matches 1..60 positioned ^ ^ ^-0.1 run function blue:tr/effects/wild/sprout/cast
execute unless block ~ ~ ~ #blue:trims/sproutable[age=0] run return 0
execute if entity @s[advancements={blue:tr/sprout={wheat=true}}] run scoreboard players set #.temp blue.misc -1
execute if entity @s[advancements={blue:tr/sprout={potato=true}}] run scoreboard players set #.temp blue.misc -2
execute if entity @s[advancements={blue:tr/sprout={carrot=true}}] run scoreboard players set #.temp blue.misc -3
execute if entity @s[advancements={blue:tr/sprout={beetroot=true}}] run scoreboard players set #.temp blue.misc -4
item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
execute positioned ~ ~ ~-1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~1 ~ ~ if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~ ~ ~1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~-1 ~ ~ if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~1 ~ ~-1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~-1 ~ ~-1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~-1 ~ ~1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place
execute positioned ~1 ~ ~1 if block ~ ~-1 ~ farmland if block ~ ~ ~ air run function blue:tr/effects/wild/sprout/place