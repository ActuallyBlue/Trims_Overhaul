effect clear @s mining_fatigue
execute store success score #.swimming blue.misc if predicate blue:shared/is_swimming
execute store success score #.tide.ambient blue.misc unless score #.tide.ambient blue.misc matches 1
execute unless score #.swimming blue.misc matches 1 if score #.tide.ambient blue.misc matches 0 run particle dolphin ~ ~0.8 ~ 0.22 0.4 0.22 0 1 normal @a[scores={blue.particles=1..}]
execute unless score #.swimming blue.misc matches 1 if score #.tide.ambient blue.misc matches 1 run particle dolphin ~ ~0.9 ~ 0.22 0.4 0.22 0 1 normal @a[scores={blue.particles=2..}]
execute if score #.swimming blue.misc matches 1 run particle dolphin ~ ~0.2 ~ 0.15 0.15 0.15 0 1 normal @a[scores={blue.particles=1..}]
execute if predicate blue:shared/in_water run function blue:tr/effects/tide/in_water
scoreboard players set #.temp blue.misc 0
execute if predicate {"condition":"weather_check","raining":true} unless biome ~ ~ ~ #blue:no_rain positioned over ocean_floor at @s[dy=100] run function blue:tr/effects/tide/in_rain
execute unless score #.tide.speed_status blue.misc = #.temp blue.misc run function blue:tr/effects/tide/speed
execute if items entity @s weapon.* conduit run function blue:tr/effects/tide/conduit
execute store success score #.temp blue.misc if items entity @s weapon trident
execute unless score #.temp blue.misc = #.tide.technique blue.misc run function blue:tr/effects/tide/technique
execute unless entity @s[tag=blue.tr.mats.heart] run return fail
execute if biome ~ ~ ~ #is_ocean run function blue:tr/effects/tide/in_ocean
execute if entity @s[predicate=blue:shared/is_sneaking,advancements={blue:tr/tags={not_sneaking=true}}] run function blue:tr/effects/tide/emp/tap_sneak
execute unless score #.tide.weak_cooldown blue.misc matches 1 if score #.tide.stacks blue.misc matches 1.. if score #.sneaking blue.misc matches 2 if score #.temp blue.misc matches 1 run function blue:tr/effects/tide/emp/burst_checks
execute as @e[type=trident,tag=!blue.tr.tide_checked] at @s run function blue:tr/effects/tide/emp/trident
scoreboard players reset #.sneaking blue.misc
execute if score #.60 blue.misc matches 30 if predicate {"condition":"location_check","predicate":{"fluid":{"fluids":"#lava"}}} run function blue:tr/effects/tide/emp/lava
execute if predicate {"condition":"location_check","predicate":{"structures":"monument"}} run scoreboard players remove #.tide.recharge blue.misc 30
execute if score #.tide.recharge blue.misc matches 90 if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.tide.recharge blue.misc 130
execute unless score #.tide.stacks blue.misc matches 10.. run scoreboard players add #.tide.timer blue.misc 1
execute if score #.tide.timer blue.misc >= #.tide.recharge blue.misc run function blue:tr/effects/tide/emp/stack
execute if score #.tide.recharge blue.misc matches 90 run scoreboard players reset #.tide.timer blue.misc
scoreboard players set #.tide.recharge blue.misc 90