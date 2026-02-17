execute if entity @s[distance=..4] at @s run return run function blue:tr/effects/bolt/effects {saturation:9,duration:26,volume:2.3,particles:65,speed:1.2}
execute if entity @s[distance=..32] at @s run return run function blue:tr/effects/bolt/effects {saturation:8,duration:16,volume:1.7,particles:40,speed:0.85}
execute if entity @s[distance=..64] at @s run return run function blue:tr/effects/bolt/effects {saturation:7,duration:10,volume:1.3,particles:26,speed:0.65}
execute if entity @s[distance=..96] at @s run return run function blue:tr/effects/bolt/effects {saturation:6,duration:6,volume:1.0,particles:18,speed:0.48}
execute if entity @s[distance=..128] at @s run return run function blue:tr/effects/bolt/effects {saturation:5,duration:4,volume:0.75,particles:12,speed:0.35}
execute if entity @s[distance=..160] at @s run return run function blue:tr/effects/bolt/effects {saturation:4,duration:2,volume:0.55,particles:8,speed:0.25}
execute if entity @s[distance=..192] at @s run return run function blue:tr/effects/bolt/effects {saturation:3,duration:1,volume:0.4,particles:5,speed:0.18}
execute at @s run playsound entity.firework_rocket.large_blast_far player @a ~ ~ ~ 0.2 0.5
execute at @s run playsound entity.firework_rocket.twinkle_far player @a ~ ~ ~ 0.2 0.5
execute at @s run particle electric_spark ~ ~1 ~ 0.4 0.9 0.4 0.1 4
effect give @s saturation 2 0
effect give @s speed 1 1
effect give @s haste 1 1