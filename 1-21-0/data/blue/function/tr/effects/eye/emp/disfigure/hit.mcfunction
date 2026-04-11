effect give @s blindness 2 0
scoreboard players add @s[type=player,tag=!blue.tr.eye] blue.tr.fear 300
execute if entity @s[advancements={blue:tr/trust={eye=true}}] run return fail
execute unless score @s blue.tr.fear matches 2400.. run scoreboard players add @s[type=!player] blue.tr.fear 600
summon marker ~ ~ ~ {UUID:[I;-1318907857,100,0,1]}
damage @s 5 magic by b163102f-0-64-0-1 from @a[tag=blue.tr.eye,limit=1]
kill b163102f-0-64-0-1
effect give @s blindness 8 0
effect give @s slowness 10 0
effect give @s glowing 10 0