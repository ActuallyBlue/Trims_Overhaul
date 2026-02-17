scoreboard players reset #.temp blue.misc
execute if entity @s[gamemode=survival] run scoreboard players set #.temp blue.misc -1
execute if entity @s[gamemode=adventure] run scoreboard players set #.temp blue.misc -2
gamemode creative
tp @s ~ ~1000 ~
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
execute positioned ^ ^ ^-1.6 positioned ~ ~1002 ~ summon end_crystal run damage @s 1
tp @s ~ ~0.5 ~
execute if score #.temp blue.misc matches -1 run gamemode survival
execute if score #.temp blue.misc matches -2 run gamemode adventure
playsound entity.leash_knot.place player @s ~ ~ ~ 2 0.5
schedule function blue:tr/effects/wayfinder/sound 2t
item replace entity b163102f-0-0-0-100000000 weapon from entity @s weapon
execute store result score #.temp blue.misc run data get entity b163102f-0-0-0-100000000 HandItems[0].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
execute if score #.temp blue.misc matches ..0 run scoreboard players set #.temp blue.misc -7500
execute if score #.temp blue.misc matches 1 run scoreboard players set #.temp blue.misc -5625
execute if score #.temp blue.misc matches 2 run scoreboard players set #.temp blue.misc -3750
execute if score #.temp blue.misc matches 3.. run scoreboard players set #.temp blue.misc -1875
item modify entity @s[gamemode=!creative] weapon blue:shared/damage
item replace entity b163102f-0-0-0-100000000 weapon with air
execute unless predicate blue:tr/grapple_durability run return 0
particle item fishing_rod ^ ^1 ^0.5 0.1 0.1 0.1 0.1 8
playsound entity.item.break player @a ~ ~ ~ 1 1
item replace entity @s weapon with air