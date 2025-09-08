execute as @a[tag=blue.tr.vex,limit=1] at @s run tp @s @s
damage @s 3 blue:tr/lunge by @a[tag=blue.tr.vex,limit=1]
scoreboard players set #.vex.sneak blue.misc -90
particle sweep_attack ~ ~1 ~ 0.1 0.5 0.1 2.5 8
playsound entity.phantom.bite player @a ~ ~ ~ 1.25 0.9