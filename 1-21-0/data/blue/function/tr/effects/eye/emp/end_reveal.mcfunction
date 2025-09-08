execute unless score #.eye.grand_reveal blue.misc matches 60.. run return run scoreboard players reset #.eye.grand_reveal blue.misc
effect clear @e[type=!player,tag=!smithed.entity,distance=..128] glowing
scoreboard players reset #.eye.grand_reveal blue.misc
playsound entity.phantom.ambient player @a ~ ~ ~ 1.5 1.5
particle reverse_portal ~ ~1 ~ 0.2 0.2 0.2 3 128
effect give @s speed 5 2 true
effect clear @s blindness
effect give @s glowing
particle flash