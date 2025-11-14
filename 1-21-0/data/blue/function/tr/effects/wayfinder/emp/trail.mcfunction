scoreboard players add @s blue.misc 1
effect give @a[distance=..0.7,advancements={blue:tr/trust={wayfinder=true}}] speed 1 4 true
execute if score @s blue.misc matches ..5 run particle dust{color:[1f,1f,1f],scale:1} ~ ~ ~ 0.3 0 0.3 0 2
execute if score @s blue.misc matches ..5 run return run particle dust{color:[1f,1f,1f],scale:1} ~ ~ ~ 0.3 0 0.3 0 2 normal @a[scores={blue.particles=2..}]
kill @s[scores={blue.misc=30..}]