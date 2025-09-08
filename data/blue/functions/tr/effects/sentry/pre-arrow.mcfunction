tag @s add blue.tr.checked
execute unless block ~ ~-0.5 ~ #blue:trims/passable run return 0
execute on origin if entity @s[tag=blue.tr.sentry] run scoreboard players set #.temp blue.misc -52
execute if score #.temp blue.misc matches -52 store result entity @s damage double 1.5 run data get entity @s damage