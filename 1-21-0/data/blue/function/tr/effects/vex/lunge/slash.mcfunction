execute as @a[tag=blue.tr.vex,limit=1] at @s run tp @s @s
damage @s 2 blue:tr/lunge by @a[tag=blue.tr.vex,limit=1]
scoreboard players set #.vex.sneak blue.misc -90
particle sweep_attack ~ ~1 ~ 0.1 0.5 0.1 2 6
playsound entity.phantom.bite player @a