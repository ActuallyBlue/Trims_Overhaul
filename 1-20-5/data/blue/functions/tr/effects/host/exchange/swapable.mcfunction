scoreboard players set #.temp blue.misc 1
scoreboard players add #.exchange_channel blue.misc 1
execute if score @s blue.health matches ..10 run scoreboard players add #.exchange_channel blue.misc 1
execute if score #.exchange_channel blue.misc matches 5.. run particle dust{color:[0.9f,0.9f,0.8f],scale:1} ~ ~0.7 ~ 0.35 0.5 0.35 0 6 force @a[tag=blue.tr.host,limit=1]
execute unless score #.exchange_channel blue.misc matches 25.. run return fail
execute if score @s blue.health matches ..10 if score @a[tag=blue.tr.host,limit=1] blue.health matches 16.. run effect give @s instant_health
execute if score @s blue.health matches ..10 run damage @a[tag=blue.tr.host,scores={blue.health=16..},limit=1] 4 blue:tr/sacrifice
playsound entity.illusioner.mirror_move player @a ~ ~ ~ 0.75 2
kill b163102f-0-b-0-1
summon marker ~ ~ ~ {UUID:[I;-1318907857,11,0,1]}
effect give @s invisibility 4 0 true
execute at @a[tag=blue.tr.host,limit=1] run tp @s ~ ~ ~