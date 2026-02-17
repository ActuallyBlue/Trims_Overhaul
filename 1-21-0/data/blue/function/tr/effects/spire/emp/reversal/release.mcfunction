execute if score #.reversal_charge blue.misc matches ..24 run return run scoreboard players reset #.reversal_charge blue.misc
scoreboard players set #.can_plunge blue.misc 0
scoreboard players reset #.reversal_timer blue.misc
playsound entity.ender_dragon.flap player @a[distance=..16] ~ ~ ~ 5 0.5 1
playsound entity.firework_rocket.large_blast player @a[distance=..16] ~ ~ ~ 10 0.5
scoreboard players operation #.spire.last_reversal_charge blue.misc = #.reversal_charge blue.misc
execute if score #.reversal_charge blue.misc matches ..54 run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.2 64
execute if score #.reversal_charge blue.misc matches 55.. run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 128 normal @a[scores={blue.particles=1..}]
execute if score #.reversal_charge blue.misc matches ..39 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/available 20t
execute if score #.reversal_charge blue.misc matches ..39 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 40t
execute if score #.reversal_charge blue.misc matches ..39 unless score #.temp0 blue.misc matches -7412 as @a[distance=..2,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches ..39 if score #.temp0 blue.misc matches -7412 positioned ~-3 ~-2 ~-3 as @a[dx=5,dy=20,dz=5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches ..39 unless score #.temp0 blue.misc matches -7412 as @e[type=!#blue:shared/no_ai,type=!player,distance=0.01..2] run data modify entity @s Motion[1] set value 1.9d
execute if score #.reversal_charge blue.misc matches ..39 if score #.temp0 blue.misc matches -7412 positioned ~-3 ~-2 ~-3 as @e[dx=5,dy=20,dz=5,type=!#blue:shared/no_ai,type=!player] run data modify entity @s Motion[1] set value -2d
execute if score #.reversal_charge blue.misc matches ..39 run scoreboard players set #.reversal_charge blue.misc -120
execute if score #.reversal_charge blue.misc matches 40..54 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/available 25t
execute if score #.reversal_charge blue.misc matches 40..54 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 50t
execute if score #.reversal_charge blue.misc matches 40..54 unless score #.temp0 blue.misc matches -7412 as @a[distance=..3.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 40..54 if score #.temp0 blue.misc matches -7412 positioned ~-5.25 ~-3.5 ~-5.25 as @a[dx=9.5,dy=35,dz=9.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 40..54 unless score #.temp0 blue.misc matches -7412 as @e[type=!#blue:shared/no_ai,type=!player,distance=0.01..3.5] run data modify entity @s Motion[1] set value 2.9d
execute if score #.reversal_charge blue.misc matches 40..54 if score #.temp0 blue.misc matches -7412 positioned ~-5.25 ~-3.5 ~-5.25 as @e[dx=9.5,dy=35,dz=9.5,type=!#blue:shared/no_ai,type=!player] run data modify entity @s Motion[1] set value -3d
execute if score #.reversal_charge blue.misc matches 40..54 run scoreboard players set #.reversal_charge blue.misc -160
execute if score #.reversal_charge blue.misc matches 55..69 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/available 30t
execute if score #.reversal_charge blue.misc matches 55..69 unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 60t
execute if score #.reversal_charge blue.misc matches 55..69 unless score #.temp0 blue.misc matches -7412 as @a[distance=..6.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 55..69 if score #.temp0 blue.misc matches -7412 positioned ~-9.75 ~-6.5 ~-9.75 as @a[dx=18.5,dy=65,dz=18.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 55..69 unless score #.temp0 blue.misc matches -7412 as @e[type=!#blue:shared/no_ai,type=!player,distance=0.01..6.5] run data modify entity @s Motion[1] set value 3.9d
execute if score #.reversal_charge blue.misc matches 55..69 if score #.temp0 blue.misc matches -7412 positioned ~-9.75 ~-6.5 ~-9.75 as @e[dx=18.5,dy=65,dz=18.5,type=!#blue:shared/no_ai,type=!player] run data modify entity @s Motion[1] set value -4d
execute if score #.reversal_charge blue.misc matches 55..69 run scoreboard players set #.reversal_charge blue.misc -180
execute if score #.reversal_charge blue.misc matches 70.. unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/available 38t
execute if score #.reversal_charge blue.misc matches 70.. unless score #.temp0 blue.misc matches -7412 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 76t
execute if score #.reversal_charge blue.misc matches 70.. unless score #.temp0 blue.misc matches -7412 as @a[distance=..9.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 70.. if score #.temp0 blue.misc matches -7412 positioned ~-14.25 ~-9.5 ~-14.25 as @a[dx=27.5,dy=95,dz=27.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 70.. unless score #.temp0 blue.misc matches -7412 as @e[type=!#blue:shared/no_ai,type=!player,distance=0.01..9.5] run data modify entity @s Motion[1] set value 4.9d
execute if score #.reversal_charge blue.misc matches 70.. if score #.temp0 blue.misc matches -7412 positioned ~-14.25 ~-9.5 ~-14.25 as @e[dx=27.5,dy=95,dz=27.5,type=!#blue:shared/no_ai,type=!player] run data modify entity @s Motion[1] set value -5d
execute if score #.reversal_charge blue.misc matches 70.. run scoreboard players set #.reversal_charge blue.misc -200
scoreboard players reset #.temp0 blue.misc