effect give @e[type=!#blue:tr/no_effects,distance=5..128] glowing 9 9 true
scoreboard players add @a[distance=5..80] blue.tr.fear 50
playsound entity.phantom.ambient player @a ~ ~ ~ 1 0.5
effect give @a[distance=5..100] slowness 5 1 true
particle glow ~ ~2 ~ 24 10 24 0 40 force
effect give @s invisibility 5 0 true
effect give @s blindness 2 0 true
effect clear @s darkness