particle smoke ~ ~ ~ 0.1 0.1 0.1 0.005 1 force
particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0.005 1 force
execute if score #.eye.two_tick blue.misc matches 0 run playsound item.lodestone_compass.lock player @a ~ ~ ~ 1.5 1
execute if score #.eye.two_tick blue.misc matches 0 run playsound item.lodestone_compass.lock player @a[tag=blue.tr.eye] ~ -128 ~ 0 2 0.1
execute if score #.eye.two_tick blue.misc matches 0 on origin run playsound item.lodestone_compass.lock player @s[tag=!blue.tr.eye] ~ -128 ~ 0 2 0.1
execute unless score @s blue.misc matches 0.. run data modify entity @s Glowing set value 1b
scoreboard players set @s blue.misc 5
scoreboard players add @s blue.tr.fear 1
execute if score @s blue.tr.fear > #.eye.disfigure_time blue.config run function blue:tr/effects/eye/emp/disfigure/explode
schedule function blue:tr/effects/eye/emp/disfigure/remove 6t
scoreboard players set #.eye.disfigure_time blue.misc 7