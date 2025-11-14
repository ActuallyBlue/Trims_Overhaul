data merge entity @s {Tags:["blue.tr.coast_projectile","blue.tr.coast_salmon","smithed.entity"],teleport_duration:1,item:{id:salmon,Count:1b},transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[-0.28f,-0.65f,0.28f,0.65f]}}
playsound entity.salmon.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.8 1.6
schedule function blue:tr/effects/coast/fire/cooldown 7t
scoreboard players set #.coast.fire_cooldown blue.misc 1
tp @s ~ ~ ~ ~ ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~2 ~
execute unless score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~3 ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~-2 ~
execute unless score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-3 ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~ ~2
execute unless score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~3
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~ ~-2
execute unless score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~-3
execute if score #.temp0 blue.misc matches -597 run scoreboard players set @s blue.misc -2