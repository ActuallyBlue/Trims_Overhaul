execute if score #.reversal_charge blue.misc matches ..24 run return run scoreboard players reset #.reversal_charge blue.misc
scoreboard players set #.can_plunge blue.misc 0
scoreboard players reset #.reversal_timer blue.misc
playsound entity.ender_dragon.flap player @a[distance=..16] ~ ~ ~ 5 0.5 1
playsound entity.firework_rocket.large_blast player @a[distance=..16] ~ ~ ~ 10 0.5
scoreboard players operation #.last_reversal_charge blue.misc = #.reversal_charge blue.misc
execute if score #.reversal_charge blue.misc matches ..54 run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.2 64
execute if score #.reversal_charge blue.misc matches 55.. run particle end_rod ~ ~1 ~ 0.2 0.2 0.2 0.5 128 normal @a[scores={blue.particles=1..}]
execute if score #.reversal_charge blue.misc matches ..39 run schedule function blue:tr/effects/spire/emp/plunge/available 20t
execute if score #.reversal_charge blue.misc matches ..39 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 40t
execute if score #.reversal_charge blue.misc matches ..39 run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches ..39 as @a[distance=..2,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches ..39 run scoreboard players set #.reversal_charge blue.misc -60
execute if score #.reversal_charge blue.misc matches 40..54 run schedule function blue:tr/effects/spire/emp/plunge/available 25t
execute if score #.reversal_charge blue.misc matches 40..54 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 50t
execute if score #.reversal_charge blue.misc matches 40..54 run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 40..54 as @a[distance=..3.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 40..54 run scoreboard players set #.reversal_charge blue.misc -80
execute if score #.reversal_charge blue.misc matches 55..69 run schedule function blue:tr/effects/spire/emp/plunge/available 30t
execute if score #.reversal_charge blue.misc matches 55..69 run schedule function blue:tr/effects/spire/emp/plunge/unavailable 60t
execute if score #.reversal_charge blue.misc matches 55..69 run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 55..69 as @a[distance=..6.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 55..69 run scoreboard players set #.reversal_charge blue.misc -90
execute if score #.reversal_charge blue.misc matches 70.. run schedule function blue:tr/effects/spire/emp/plunge/available 38t
execute if score #.reversal_charge blue.misc matches 70.. run schedule function blue:tr/effects/spire/emp/plunge/unavailable 76t
execute if score #.reversal_charge blue.misc matches 70.. run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 70.. as @a[distance=..9.5,gamemode=!spectator,gamemode=!creative] at @s run function blue:tr/effects/spire/emp/reversal/launch
execute if score #.reversal_charge blue.misc matches 70.. run scoreboard players set #.reversal_charge blue.misc -100