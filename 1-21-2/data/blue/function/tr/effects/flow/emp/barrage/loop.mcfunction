scoreboard players add #.barrage_time blue.misc 1
execute as @e[type=item,tag=!blue.tr.checked,distance=..6] if items entity @s contents wind_charge run function blue:tr/item/quick_return
execute if score #.barrage_time blue.misc matches 2 run function blue:tr/effects/flow/emp/barrage/start
execute if score #.barrage_time blue.misc matches 2 run attribute @s gravity modifier remove blue:tr.trim
execute if score #.barrage_time blue.misc matches 2 run attribute @s gravity modifier add blue:tr.trim -0.06 add_value
execute if score #.barrage_time blue.misc matches 11..43 run particle cloud ~ ~0.25 ~ 0.2 0 0.2 0 1
execute if score #.barrage_time blue.misc matches 39 run attribute @s gravity modifier remove blue:tr.trim
execute if score #.barrage_time blue.misc matches 39 run attribute @s gravity modifier add blue:tr.trim -0.08 add_value
execute if score #.barrage_time blue.misc matches 63.. run particle poof ~ ~-0.25 ~ 0.2 0 0.2 2 3
execute if score #.barrage_time blue.misc matches 62.. if predicate blue:shared/is_sneaking run tp ~ ~-0.2 ~
execute if score #.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"type_specific":{"type":"player","input":{"jump":true}}}} at @s run tp ~ ~0.15 ~
execute if score #.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":3}} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
execute if score #.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":10}} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
execute store success score #.temp blue.misc if block ~ ~ ~ #air if block ~ ~-1 ~ #air if block ~ ~-2 ~ #air
execute unless score #.barrage_time blue.misc >= #.flow.wind_barrage_duration blue.config if score #.temp blue.misc matches 1 run return fail
scoreboard players reset #.barrage_time blue.misc
effect give @s slow_falling 2 0 true