effect clear @s glowing
scoreboard players add #.eye.ambient blue.misc 1
execute if score #.eye.ambient blue.misc matches 8 store success score #.eye.ambient blue.misc run particle glow ~ ~0.7 ~ 0.3 0.25 0.3 0 1 normal @a[scores={blue.particles=1..}]
execute store success score #.sneaking blue.misc if predicate blue:shared/is_sneaking
execute if score #.eye.watching blue.misc matches 0.. run function blue:tr/effects/eye/stalk/cancel
execute if score #.20 blue.misc matches 6 run function blue:tr/effects/eye/delay
execute unless entity @s[tag=blue.tr.mats.eye] run return fail
execute store success score #.eye.two_tick blue.misc unless score #.eye.two_tick blue.misc matches 1
execute if score #.eye.ambient blue.misc matches 4 run particle glow ~ ~0.7 ~ 0.3 0.25 0.3 0 1 normal @a[scores={blue.particles=2..}]
scoreboard players reset @s blue.tr.fear
execute as @a[scores={blue.tr.fear=1..}] run function blue:tr/effects/eye/emp/fear/player with storage blue:data trims.eye
execute if score #.eye.view_fear blue.misc matches 0.. run scoreboard players remove #.eye.view_fear blue.misc 1
execute if score #.eye.two_tick blue.misc matches 1 if items entity @s weapon.* ender_eye positioned ^ ^ ^5 as @p[distance=..6,tag=!blue.tr.eye] run function blue:tr/effects/eye/emp/display
execute if score #.eye.view_fear blue.misc matches 0 run title @s actionbar ""
execute if score #.20 blue.misc matches 3 run scoreboard players add @a[distance=0.01..32,scores={blue.tr.fear=..200},advancements={blue:tr/trust={eye=false}},predicate=blue:shared/has_glowing] blue.tr.fear 10
execute as @e[type=eye_of_ender,tag=!blue.tr.eye_checked,distance=..6] run function blue:tr/effects/eye/emp/disfigure/track_eye
execute if score #.sneaking blue.misc matches 1 run return run function blue:tr/effects/eye/emp/charge_reveal
execute if score #.eye.grand_reveal blue.misc matches 1.. if score #.sneaking blue.misc matches 0 run function blue:tr/effects/eye/emp/end_reveal
execute unless score #.eye.disfigure_time blue.misc matches 1.. unless score #.20 blue.misc matches 2..10 unless score #.20 blue.misc matches 12.. anchored eyes positioned ^ ^ ^2.5 run function blue:tr/effects/eye/emp/disfigure/cast
execute unless score #.eye.disfigure_time blue.misc matches 1.. run return fail
scoreboard players remove #.eye.disfigure_time blue.misc 1
scoreboard players remove @e[type=ender_pearl,scores={blue.misc=1..}] blue.misc 1
scoreboard players remove @e[type=eye_of_ender,scores={blue.misc=1..}] blue.misc 1
execute anchored eyes positioned ^ ^ ^2.5 run function blue:tr/effects/eye/emp/disfigure/cast