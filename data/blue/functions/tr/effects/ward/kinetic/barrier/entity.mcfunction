tag @s add blue.ticking
scoreboard players operation #.temp blue.misc = @s blue.tr.damage_blocked
execute if score #.temp blue.misc matches ..800 run tp @s ^ ^ ^0.4
execute if score #.temp blue.misc matches 801..1200 run tp @s ^ ^ ^0.6
execute if score #.temp blue.misc matches 1201..1600 run tp @s ^ ^ ^0.8
execute if score #.temp blue.misc matches 1601..2000 run tp @s ^ ^ ^1
execute if score #.temp blue.misc matches 2001.. run tp @s ^ ^ ^1.2
schedule function blue:tr/effects/ward/kinetic/barrier/loop 1t
scoreboard players add @s blue.misc 1
execute if entity @s[x_rotation=-90..-75] if score @s blue.misc matches ..2 run return 0
execute positioned ^ ^ ^1 positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#blue:shared/no_ai,tag=!smithed.strict,type=!player,dx=2,dy=2,dz=2] positioned as @s run function blue:tr/effects/ward/kinetic/barrier/shootfacing
execute positioned ^ ^ ^1 positioned ~-1.5 ~-1.5 ~-1.5 as @a[tag=!blue.tr.ward,gamemode=!spectator,gamemode=!creative,dx=2,dy=2,dz=2] positioned as @s run function blue:tr/effects/ward/kinetic/barrier/hit
execute unless score @s blue.misc matches 15.. run return 0
execute on passengers run kill
kill