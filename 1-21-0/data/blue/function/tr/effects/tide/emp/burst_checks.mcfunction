execute if predicate blue:shared/in_water run function blue:tr/effects/tide/emp/water_burst
execute unless score #.tide.surge_cooldown blue.misc matches 1 positioned over motion_blocking positioned ~ ~20 ~ if entity @s[dy=128] run function blue:tr/effects/tide/emp/tidal_surge
execute unless score #.tide.cancel blue.misc matches 1 run function blue:tr/effects/tide/emp/land_burst
scoreboard players reset #.tide.cancel blue.misc
function blue:tr/effects/tide/emp/display