tp @s @s
execute unless entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Duration:400,Tags:["blue.tr.gamble.freeze","blue.tr.mob_freeze"]}
execute unless entity @s[type=player] run return 0
scoreboard players operation #.temp blue.misc = @s blue.id
summon area_effect_cloud ~ ~ ~ {Duration:400,Tags:["blue.tr.gamble.freeze","blue.tr.temp"]}
scoreboard players operation @e[type=area_effect_cloud,tag=blue.tr.temp,distance=..1,limit=1] blue.id = @s blue.id
tag @e[type=area_effect_cloud,tag=blue.tr.temp,distance=..1,limit=1] remove blue.tr.temp
scoreboard players set @s blue.tr.combat -600