scoreboard players set #.eye.disfigure_time blue.misc 20
execute unless predicate {"condition":"entity_properties","entity":"this","predicate":{"effects":{"minecraft:nausea":{"amplifier":17}}}} run return fail
scoreboard players set @s blue.tr.used_pearl -123
execute at @s as @e[type=ender_pearl,distance=..64,sort=nearest] run function blue:tr/effects/eye/emp/disfigure/cursed_pearl
scoreboard players set @s blue.tr.used_pearl -10
scoreboard players reset #.temp blue.misc