execute summon breeze_wind_charge run data modify entity @s {} merge from storage blue:trims merge.boost
execute store result storage blue:trims temp.int int 1 run scoreboard players get #.flow.gust_strength blue.config
execute if entity @s[advancements={blue:tr/flow_gust=true}] run function blue:tr/effects/flow/emp/gust with storage blue:trims temp