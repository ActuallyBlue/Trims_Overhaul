scoreboard players add #.flow.barrage_time blue.misc 1
execute as @e[tag=!blue.tr.checked,distance=..6,type=item] if items entity @s contents wind_charge run function blue:tr/item/quick_return
execute if score #.flow.barrage_time blue.misc matches 2 run function blue:tr/effects/flow/emp/barrage/start
execute if score #.flow.barrage_time blue.misc matches 2 run attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.flow.barrage_time blue.misc matches 2 run attribute @s generic.gravity modifier add blue:tr.trim -0.0625 add_value
execute if score #.flow.barrage_time blue.misc matches 11..43 run particle cloud ~ ~0.25 ~ 0.2 0 0.2 0 1
execute if score #.flow.barrage_time blue.misc matches 39 run attribute @s generic.gravity modifier remove blue:tr.trim
execute if score #.flow.barrage_time blue.misc matches 39 run attribute @s generic.gravity modifier add blue:tr.trim -0.08 add_value
execute if score #.flow.barrage_time blue.misc matches 63 run tp ~ 100 ~
execute if score #.flow.barrage_time blue.misc matches 63 run tp ~ ~ ~
execute if score #.flow.barrage_time blue.misc matches 63.. run particle poof ~ ~-0.25 ~ 0.2 0 0.2 2 3
execute if score #.flow.barrage_time blue.misc matches 62.. if predicate {"condition":"any_of","terms":[{"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":3,"location":{"can_see_sky":true}}},{"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":4,"location":{"can_see_sky":false}}}]} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
execute if score #.flow.barrage_time blue.misc matches 62.. if predicate {"condition":"entity_properties","entity":"this","predicate":{"periodic_tick":10}} anchored eyes run function blue:tr/effects/flow/emp/barrage/spawn
particle small_gust ~ ~-3 ~ 0.2 0 0.2 0 1
execute unless block ~ ~ ~ #air unless block ~ ~-1 ~ #air unless block ~ ~-2 ~ #air unless block ~ ~-3 ~ #air run scoreboard players operation #.flow.barrage_time blue.misc = #.flow.wind_barrage_duration blue.config
execute unless score #.flow.barrage_time blue.misc >= #.flow.wind_barrage_duration blue.config run return fail
scoreboard players reset #.flow.barrage_time blue.misc
effect give @s slow_falling 3 0 true