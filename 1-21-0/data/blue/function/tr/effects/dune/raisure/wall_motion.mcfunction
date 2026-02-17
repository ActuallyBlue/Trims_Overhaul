tp @s @s
scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
 tp ~ ~1000 ~
execute positioned ~ ~1000 ~ summon end_crystal run damage @s 1
tp ~ ~1 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
schedule function blue:tr/effects/dune/raisure/give 25t
execute store success score #.temp blue.misc if predicate blue:shared/is_sneaking