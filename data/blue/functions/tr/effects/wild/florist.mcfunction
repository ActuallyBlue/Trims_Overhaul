scoreboard players set #.wild.florist_active blue.misc -1
execute positioned ^ ^ ^1 store success score #.temp blue.misc run tp @e[tag=blue.tr.wild_florist_hitbox,limit=1,type=interaction] ~ ~-0.2 ~
execute unless score #.temp blue.misc matches 1 unless entity @e[tag=blue.tr.wild_florist_hitbox,limit=1,type=interaction] positioned ^ ^ ^1 run summon interaction ~ ~-0.2 ~ {response:1b,width:0.3,height:0.4,Tags:["blue.tr.wild_florist_hitbox"]}
execute positioned ^ ^ ^1 as @e[tag=blue.tr.wild_florist_hitbox,distance=..5,nbt={interaction:{}},limit=1,type=interaction] on target if score @s blue.tr.current_trim matches 16 run scoreboard players set #.wild.florist_active blue.misc -2
execute unless score #.wild.florist_active blue.misc matches -2 run return 0
scoreboard players set #.wild.florist_cooldown blue.misc 1
schedule function blue:tr/effects/wild/florist_cooldown 30t
kill @e[tag=blue.tr.wild_florist_hitbox,limit=1,type=interaction]
item modify entity @s[gamemode=!creative] weapon blue:shared/reduce_count
item replace entity b163102f-0-0-0-100000000 weapon from entity @s weapon
data modify storage blue:trims item set from entity b163102f-0-0-0-100000000 HandItems[0].id
effect give @s saturation 1 0
execute if data storage blue:trims {item:"minecraft:allium"} run effect give @s fire_resistance 3 0
execute if data storage blue:trims {item:"minecraft:azure_bluet"} run effect give @s blindness 11 0
execute if data storage blue:trims {item:"minecraft:blue_orchid"} run effect give @s saturation 4 0
execute if data storage blue:trims {item:"minecraft:dandelion"} run effect give @s saturation 3 0
execute if data storage blue:trims {item:"minecraft:cornflower"} run effect give @s jump_boost 5 0
execute if data storage blue:trims {item:"minecraft:lily_of_the_valley"} run effect give @s poison 11 0
execute if data storage blue:trims {item:"minecraft:oxeye_daisy"} run effect give @s regeneration 7 0
execute if data storage blue:trims {item:"minecraft:poppy"} run effect give @s night_vision 5 0
execute if data storage blue:trims {item:"minecraft:torchflower"} run effect give @s night_vision 5 0
execute if data storage blue:trims {item:"minecraft:red_tulip"} run effect give @s weakness 7 0
execute if data storage blue:trims {item:"minecraft:orange_tulip"} run effect give @s weakness 7 0
execute if data storage blue:trims {item:"minecraft:white_tulip"} run effect give @s weakness 7 0
execute if data storage blue:trims {item:"minecraft:pink_tulip"} run effect give @s weakness 7 0
execute if data storage blue:trims {item:"minecraft:wither_rose"} run effect give @s night_vision 7 0
playsound block.flowering_azalea.break player @a ~ ~ ~ 0.75 0.5
playsound block.flowering_azalea.break player @a ~ ~ ~ 0.75 0.5
playsound block.flowering_azalea.break player @a ~ ~ ~ 0.75 0.5
playsound entity.generic.eat player @a ~ ~ ~ 0.75 1.5
particle composter ^ ^ ^0.5 0.1 0.1 0.1 0 8