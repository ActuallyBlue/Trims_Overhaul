tag @s add blue.tr.checked
scoreboard players reset #.temp blue.misc
execute on origin if entity @s[tag=blue.tr.sentry] run function blue:tr/effects/sentry/owner
execute if score #.temp blue.misc matches -52 store result entity @s damage double 1.5 run return run data get entity @s damage
execute if score #.temp blue.misc matches -54 run data modify entity @s crit set value 1b
execute if score #.temp blue.misc matches -54 store result entity @s damage double 2 run data get entity @s damage
execute if score #.temp blue.misc matches -53 store result entity @s damage double 1.75 run data get entity @s damage