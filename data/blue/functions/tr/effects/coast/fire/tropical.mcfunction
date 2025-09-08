data merge entity @s {Tags:["blue.tr.coast_projectile","blue.tr.coast_tropical","smithed.entity"],teleport_duration:1,item:{id:tropical_fish,Count:1b},transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[-0.28f,-0.65f,0.28f,0.65f]}}
playsound entity.tropical_fish.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.85 1.3
schedule function blue:tr/effects/coast/fire/cooldown 8t
scoreboard players set #.coast.fire_cooldown blue.misc 1
tp @s ~ ~ ~ ~ ~
execute unless predicate blue:r/25c run return 0
item replace entity @s container.0 with tropical_fish{Enchantments:[{}]}
playsound entity.fish.swim player @a ~ ~ ~ 0.5 2
tag @s add blue.tr.coast_reverse