scoreboard players add @s blue.misc 1
schedule function blue:tr/effects/ward/kinetic/field/loop 1t
execute unless score @s blue.misc matches 20.. run return 0
tp @s ~ ~ ~ ~2.5 ~
execute if score @s blue.tr.damage_blocked matches ..800 run function blue:tr/effects/ward/kinetic/field/1
execute if score @s blue.tr.damage_blocked matches 801..1200 run function blue:tr/effects/ward/kinetic/field/2
execute if score @s blue.tr.damage_blocked matches 1201..1600 run function blue:tr/effects/ward/kinetic/field/3
execute if score @s blue.tr.damage_blocked matches 1601..2000 run function blue:tr/effects/ward/kinetic/field/4
execute if score @s blue.tr.damage_blocked matches 2001.. run tp @s ~ ~ ~ ~3 ~
execute if score @s blue.tr.damage_blocked matches 2001.. run function blue:tr/effects/ward/kinetic/field/5