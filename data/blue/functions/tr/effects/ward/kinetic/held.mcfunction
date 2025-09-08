advancement revoke @s only blue:tr/tags using_shield
scoreboard players operation @s blue.tr.damage_blocked += #.ward.auto_damage blue.config
execute store success score #.temp blue.misc if predicate blue:shared/is_sneaking
execute unless score #.temp blue.misc = #.ward.stonewall blue.misc run function blue:tr/effects/ward/stonewall
execute unless score #.ward.blocking blue.misc matches 1 store success score #.ward.blocking blue.misc run scoreboard players set @s blue.tr.damage_blocked 0
execute if score @s blue.tr.damage_blocked matches 2002.. run scoreboard players set @s blue.tr.damage_blocked 2001
scoreboard players operation #.temp blue.misc = @s blue.tr.damage_blocked
execute store success score #.cast blue.misc run scoreboard players remove #.temp blue.misc 400
execute unless entity @s[x_rotation=75..90] run function blue:tr/effects/ward/kinetic/barrier/preview
execute if entity @s[x_rotation=75..90] if score #.temp blue.misc matches 1.. anchored feet rotated ~ 0 positioned ^2.25 ^ ^-0.1 run function blue:tr/effects/ward/kinetic/field/preview
execute if score @s blue.tr.damage_blocked matches 400..800 run effect give @s slowness 1 0 true
execute if score @s blue.tr.damage_blocked matches 801..1200 run effect give @s slowness 1 1 true
execute if score @s blue.tr.damage_blocked matches 1201..1600 run effect give @s slowness 1 2 true
execute if score @s blue.tr.damage_blocked matches 1601..2000 run effect give @s slowness 1 3 true
execute if score @s blue.tr.damage_blocked matches 2001.. run effect give @s slowness 1 4 true
execute store result storage blue:data trims.ward.dmg int 0.0025 run scoreboard players get @s blue.tr.damage_blocked
execute store success score #.temp blue.misc run data modify storage blue:data trims.ward.pre set from storage blue:data trims.ward.dmg
execute unless score #.temp blue.misc matches 1 run return 0
execute if score @s blue.tr.damage_blocked matches 400..800 run playsound item.shield.block player @a ~ ~ ~ 0.7 1.3
execute if score @s blue.tr.damage_blocked matches 801..1200 run playsound item.shield.block player @a ~ ~ ~ 0.75 1.1
execute if score @s blue.tr.damage_blocked matches 1201..1600 run playsound item.shield.block player @a ~ ~ ~ 0.8 0.9
execute if score @s blue.tr.damage_blocked matches 1601..2000 run playsound item.shield.block player @a ~ ~ ~ 0.85 0.7
execute if score @s blue.tr.damage_blocked matches 2001.. run playsound item.shield.block player @a ~ ~ ~ 0.9 0.5