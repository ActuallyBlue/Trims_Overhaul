execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
tp @s ~ ~0.5 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
item modify entity @s weapon blue:tr/reduce_durability
execute if predicate blue:tr/grapple_durability run return 0
playsound entity.item.break player @a ~ ~ ~ 1 1
item replace entity @s weapon with air