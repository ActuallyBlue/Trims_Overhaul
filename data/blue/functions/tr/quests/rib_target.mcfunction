execute on target run scoreboard players set #.temp blue.misc -9113
execute if score #.tr.rib_quest_target blue.config matches 0 run scoreboard players set #.temp blue.misc -9113
execute unless score #.temp blue.misc matches -9113 run title @a[tag=blue.tr.temp,limit=1] actionbar {"translate":"blue.tr.rib_quest_warn","fallback":"- The Wither needs a target","color":"gray","italic":true}
execute unless score #.temp blue.misc matches -9113 run return 0
scoreboard players reset #.temp blue.misc
particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.1 128 force
particle explosion ~ ~1.5 ~
team add blue.tr.rib
summon armor_stand ~ ~ ~ {UUID:[I;-1318907857,100,0,1],Team:"blue.tr.rib"}
execute if score #.difficulty blue.misc matches ..1 run damage @s 100 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
execute if score #.difficulty blue.misc matches 2 run damage @s 150 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
execute if score #.difficulty blue.misc matches 3.. run damage @s 200 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
damage @s 200 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
execute store result score #.temp blue.misc run data get entity @s Health
execute if score #.temp blue.misc matches ..30 run damage @s 100 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
kill b163102f-0-64-0-1