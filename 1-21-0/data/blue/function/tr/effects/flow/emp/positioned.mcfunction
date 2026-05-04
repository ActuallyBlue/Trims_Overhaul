execute summon breeze_wind_charge run data modify entity @s {} merge from storage blue:trims merge.boost
execute store result storage blue:trims temp.int int 1 run scoreboard players get #.flow.gust_strength blue.config
execute unless predicate blue:shared/can_see_sky store result storage blue:trims temp.int int 0.8 run scoreboard players get #.flow.gust_strength blue.config
execute unless score #.flow.barrage_time blue.misc matches 1.. if entity @s[advancements={blue:tr/flow_gust=true}] run function blue:tr/effects/flow/emp/gust with storage blue:trims temp