execute if predicate blue:r/25c run scoreboard players set #.coast.double_shot blue.misc 3
data merge entity @s {Tags:["blue.tr.coast_projectile","blue.tr.coast_tropical","smithed.entity"],teleport_duration:1,item:{id:tropical_fish,Count:1b},transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[-0.28f,-0.65f,0.28f,0.65f]}}
playsound entity.tropical_fish.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.85 1.3
schedule function blue:tr/effects/coast/fire/cooldown 5t
scoreboard players set #.coast.fire_cooldown blue.misc 1
tp @s ~ ~ ~ ~ ~
execute if score #.temp0 blue.misc matches -597 run scoreboard players set @s blue.misc -2
execute unless predicate blue:r/10c run return 0
item replace entity @s container.0 with tropical_fish{Enchantments:[{}]}
playsound entity.fish.swim player @a ~ ~ ~ 0.5 2
tag @s add blue.tr.coast_reverse