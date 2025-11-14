execute positioned ^ ^ ^1 store success score #.temp blue.misc run tp @e[type=interaction,tag=blue.tr.wild_hitbox,limit=1] ~ ~-0.15 ~
execute unless score #.temp blue.misc matches 1 positioned ^ ^ ^1 run summon interaction ~ ~-0.15 ~ {width:0.4,height:0.5,Tags:["blue.tr.wild_hitbox"],response:1b}
scoreboard players set #.temp blue.misc -1
execute positioned ^ ^ ^1 as @e[type=interaction,tag=blue.tr.wild_hitbox,distance=..5,nbt={interaction:{}},limit=1] on target if entity @s[tag=blue.tr.wild] run scoreboard players set #.temp blue.misc -2332
scoreboard players set #.wild.looking blue.misc 1
execute unless score #.temp blue.misc matches -2332 run return 0
scoreboard players reset #.temp blue.misc
scoreboard players reset #.wild.looking blue.misc
kill @e[type=interaction,tag=blue.tr.wild_hitbox,limit=1]
execute as @e[type=marker,tag=blue.tr.wild.trap,sort=nearest] unless score #.temp blue.misc matches -10 at @s facing entity @a[tag=blue.tr.wild,limit=1] feet positioned ^ ^ ^1 rotated as @a[tag=blue.tr.wild,limit=1] positioned ^ ^ ^1 at @s[distance=..0.1] positioned ~ ~1.25 ~ run function blue:tr/effects/wild/emp/trap/sting