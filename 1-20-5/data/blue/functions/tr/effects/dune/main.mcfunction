scoreboard players add #.dune.ambient blue.misc 1
execute if score #.dune.ambient blue.misc matches 3 run particle falling_dust{block_state:{Name:sand}} ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.dune.ambient blue.misc matches 7.. store success score #.dune.ambient blue.misc run particle falling_dust{block_state:{Name:sand}} ~ ~0.9 ~ 0.2 0.4 0.2 0 1 normal @a[scores={blue.particles=1..}]
execute if score #.60 blue.misc matches 23 run function blue:tr/effects/dune/endurance
execute unless score @s blue.tr.mined_sand matches 1.. run return fail
scoreboard players reset @s blue.tr.mined_sand
execute if items entity @s weapon #shovels run return fail
execute store success score #.temp blue.misc if predicate blue:shared/is_sneaking
execute positioned ^ ^ ^1.5 as @e[type=item,distance=..4,tag=!blue.tr.checked] at @s align xyz run function blue:tr/effects/dune/raisure/item
execute unless score #.temp blue.misc matches -5256 run return fail
tp @s @s
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ~ ~1000 ~ summon end_crystal run damage @s 1
tp @s ~ ~1 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
schedule function blue:tr/effects/dune/raisure/give 25t