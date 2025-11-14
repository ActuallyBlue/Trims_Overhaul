execute on target run scoreboard players set #.temp blue.misc -9113
execute unless score #.temp blue.misc matches -9113 run return run title @a[tag=blue.tr.temp,limit=1] actionbar {"translate":"blue.tr.rib_quest_warn","fallback":"- The Wither needs a target","color":"gray","italic":true}
scoreboard players add @s blue.misc 1
scoreboard players reset #.temp blue.misc
particle flame ~ ~1.5 ~ 0.3 0.3 0.3 0.1 128 force
particle explosion ~ ~1.5 ~
team add blue.tr.rib
summon armor_stand ~ ~ ~ {UUID:[I;-1318907857,100,0,1],Team:"blue.tr.rib"}
damage @s 100 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
execute store result score #.temp blue.misc run data get entity @s Health
execute if score #.temp blue.misc matches ..30 run damage @s 100 blue:tr/raw by b163102f-0-64-0-1 from @a[tag=blue.tr.temp,limit=1]
kill b163102f-0-64-0-1