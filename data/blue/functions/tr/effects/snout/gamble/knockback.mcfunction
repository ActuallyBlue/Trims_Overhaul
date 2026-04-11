scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
tp @s ~ ~0.5 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
playsound entity.player.attack.knockback player @a ~ ~ ~ 0.5