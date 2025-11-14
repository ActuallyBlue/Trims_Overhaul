execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
tp @s ~ ~0.5 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
playsound item.lead.tied player @s ~ ~ ~ 2 0.5
schedule function blue:tr/effects/wayfinder/sound 2t
item modify entity @s[gamemode=!creative] weapon blue:shared/damage
execute if items entity @s weapon fishing_rod[damage~{damage:{max:63}}] run return fail
particle item{item:"fishing_rod"} ^ ^1 ^0.5 0.1 0.1 0.1 0.1 8
playsound entity.item.break player @a ~ ~ ~ 1 1
item replace entity @s weapon with air