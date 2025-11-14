scoreboard players add #.wayfinder.ambient blue.misc 1
execute if score #.wayfinder.ambient blue.misc matches 4 store success score #.wayfinder.ambient blue.misc run particle enchant ~ ~1.1 ~ 0.3 0.3 0.3 0.4 1 normal @a[scores={blue.particles=1..}]
execute if score #.20 blue.misc matches 10 run function blue:tr/effects/wayfinder/explorer
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"flags":{"is_sneaking":true,"is_on_ground":false}}} run effect give @s slow_falling 1 0 true
execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"effects":{"speed":{"amplifier":{"min":2}}}}} run function blue:tr/effects/wayfinder/fast
execute if items entity @s weapon fishing_rod as @e[type=fishing_bobber,distance=1.25..32,tag=!blue.tr.checked] at @s run function blue:tr/effects/wayfinder/grapple
execute unless entity @s[tag=blue.tr.mats.star] run return fail
execute if score #.wayfinder.ambient blue.misc matches 2 run particle enchant ~ ~1.1 ~ 0.3 0.3 0.3 0.4 1 normal @a[scores={blue.particles=2..}]
scoreboard players reset #.warp_charging blue.misc
execute unless score #.wayfinder.warp_cooldown blue.misc matches 1 if entity @s[scores={blue.tr.combat=0..},predicate=blue:tr/hold_compass,predicate=!blue:tr/moving] run function blue:tr/effects/wayfinder/emp/warp/charge
execute if score #.warp_charge blue.misc matches 1.. unless score #.warp_charging blue.misc matches 1 run function blue:tr/effects/wayfinder/emp/warp/exit
execute unless score #.20 blue.misc matches 3 unless score #.20 blue.misc matches 13 run return fail
scoreboard players operation #.level blue.tr.structures = @s blue.tr.structures
execute if dimension overworld if score #.level blue.tr.structures matches 32.. if score #.wayfinder.void_return blue.config matches 1 unless predicate {"condition":"location_check","predicate":{"block":{}}} if entity @s[y=0,dy=-10000] run function blue:tr/effects/wayfinder/emp/return
execute unless entity @s[predicate=blue:shared/is_sneaking,predicate=blue:tr/hold_map] run return fail
execute if score #.wayfinder.tracker_range blue.config matches 2.. as @p[distance=4..,tag=!blue.tr.wayfinder,gamemode=!spectator] at @s run function blue:tr/effects/wayfinder/emp/locator
execute if score #.wayfinder.tracker_range blue.config matches 1 as @p[distance=4..240,tag=!blue.tr.wayfinder,gamemode=!spectator] at @s run function blue:tr/effects/wayfinder/emp/locator
execute facing entity @a[tag=blue.tr.wayfinder.tracked,limit=2] feet run particle crit ~ ~0.5 ~ ^ ^ ^100000 0.000012 0 force @s
tag @a[tag=blue.tr.wayfinder.tracked,limit=2] remove blue.tr.wayfinder.tracked