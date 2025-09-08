scoreboard players add #.barrage_time blue.misc 1
execute as @e[type=item,tag=!blue.tr.checked,distance=..6] if items entity @s contents wind_charge run data modify entity @s PickupDelay set value 0s
execute if score #.barrage_time blue.misc matches 2 run function blue:tr/effects/flow/emp/barrage/start
execute if score #.barrage_time blue.misc matches 2 run attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.barrage_time blue.misc matches 2 run attribute @s generic.gravity modifier add blue:tr.trim -0.06 add_value
execute if score #.barrage_time blue.misc matches 11..43 run particle cloud ~ ~0.25 ~ 0.2 0 0.2 0 1
execute if score #.barrage_time blue.misc matches 39 run attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.barrage_time blue.misc matches 39 run attribute @s generic.gravity modifier add blue:tr.trim -0.08 add_value
execute if score #.barrage_time blue.misc matches 63.. run particle poof ~ ~-0.25 ~ 0.2 0 0.2 2 3
execute if score #.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":3}} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
execute if score #.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":10}} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
execute unless block ~ ~ ~ #air unless block ~ ~-1 ~ #air unless block ~ ~-2 ~ #air run scoreboard players operation #.barrage_time blue.misc = #.flow.wind_barrage_duration blue.config
execute unless score #.barrage_time blue.misc >= #.flow.wind_barrage_duration blue.config run return fail
scoreboard players reset #.barrage_time blue.misc
effect give @s slow_falling 3 0 true