effect give @s blindness 8 0
scoreboard players add @s blue.tr.fear 100
execute if entity @s[advancements={blue:tr/trust={eye=true}}] run return 0
damage @s 5 magic by @a[tag=blue.tr.eye,limit=1]
scoreboard players add @s[scores={blue.tr.fear=..600}] blue.tr.fear 200
damage @s 0.1 blue:tr/raw at ~ ~ ~
effect give @s slowness 10 0
effect give @s glowing 10 0