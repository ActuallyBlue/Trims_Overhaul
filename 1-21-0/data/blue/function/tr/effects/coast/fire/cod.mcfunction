data merge entity @s {Tags:["blue.tr.coast_projectile","blue.tr.coast_cod","smithed.entity"],teleport_duration:1,item:{id:cod},transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[-0.28f,-0.65f,0.28f,0.65f]}}
playsound entity.cod.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.75 1.9
schedule function blue:tr/effects/coast/fire/cooldown 5t
scoreboard players set #.coast.fire_cooldown blue.misc 1
tp @s ~ ~ ~ ~ ~