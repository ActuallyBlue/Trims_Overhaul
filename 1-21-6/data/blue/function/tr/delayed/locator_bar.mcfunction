execute store result storage blue:trims temp.int int 1 run scoreboard players get @s blue.tr.current_trim
execute if score #.tr.trim_locator_bar blue.config matches 1 if score @s blue.tr.current_trim matches 1.. run return run function blue:tr/delayed/locator_bar_macro with storage blue:trims temp
tag @s remove blue.tr.custom_waypoint
waypoint modify @s color reset
waypoint modify @s style reset