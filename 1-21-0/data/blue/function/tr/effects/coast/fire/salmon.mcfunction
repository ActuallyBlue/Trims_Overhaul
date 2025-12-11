data merge entity @s {Tags:["blue.tr.coast_projectile","blue.tr.coast_salmon","smithed.entity"],teleport_duration:1,item:{id:salmon},transformation:{scale:[0.5f,0.5f,0.5f],left_rotation:[-0.28f,-0.65f,0.28f,0.65f]}}
playsound entity.salmon.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.8 1.6
schedule function blue:tr/effects/coast/fire/cooldown 7t
scoreboard players set #.coast.fire_cooldown blue.misc 1
execute if score #.temp blue.misc matches 1 store result storage blue:trims temp.r1 float 0.1 run random value -40..40
execute if score #.temp blue.misc matches 1 store result storage blue:trims temp.r2 float 0.1 run random value -40..40
execute if score #.temp blue.misc matches 0 store result storage blue:trims temp.r1 float 0.1 run random value -20..20
execute if score #.temp blue.misc matches 0 store result storage blue:trims temp.r2 float 0.1 run random value -20..20
function blue:tr/effects/coast/fire/rot-m with storage blue:trims temp
execute if score #.temp0 blue.misc matches -597 run scoreboard players set @s blue.misc -2