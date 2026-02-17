effect give @s blindness 2 0
scoreboard players add @s[type=player,tag=!blue.tr.eye] blue.tr.fear 300
execute if entity @s[advancements={blue:tr/trust={eye=true}}] run return fail
damage @s 5 magic by @a[tag=blue.tr.eye,limit=1]
execute unless score @s blue.tr.fear matches 2400.. run scoreboard players add @s[type=!player] blue.tr.fear 600
damage @s 0.1 blue:tr/raw at ~ ~ ~
effect give @s blindness 8 0
effect give @s slowness 10 0
effect give @s glowing 10 0