execute store success score #.temp blue.misc if predicate blue:tr/moving
execute if score #.temp blue.misc matches 1 if score #.eye.grand_reveal blue.misc matches 1.. run function blue:tr/effects/eye/emp/end_reveal
execute unless score #.temp blue.misc matches 0 run return fail
scoreboard players add #.eye.grand_reveal blue.misc 1
execute if score #.eye.grand_reveal blue.misc matches 43 run effect give @s darkness 2 0 true
execute if score #.eye.grand_reveal blue.misc matches 20.. run particle reverse_portal ~ ~0.5 ~ 0.2 0.2 0.2 2 1
execute unless score #.eye.grand_reveal blue.misc matches 60.. run return fail
execute if score #.eye.grand_reveal blue.misc matches 60 run function blue:tr/effects/eye/emp/first_reveal
particle glow ~ ~2 ~ 24 10 24 0 10 force
particle glow ~ ~2 ~ 24 10 24 0 30 normal @a[scores={blue.particles=1..}]
particle glow ~ ~2 ~ 24 10 24 0 30 force @a[scores={blue.particles=2}]
execute if score #.60 blue.misc matches 3 run playsound entity.phantom.ambient player @a ~ ~ ~ 1 0.5
execute unless score #.20 blue.misc matches 10 run return fail
scoreboard players add @a[distance=5..80] blue.tr.fear 18
scoreboard players add @a[distance=5..80,scores={blue.tr.fear=..200}] blue.tr.fear 5
effect give @e[type=!#blue:shared/no_ai,distance=5..128] glowing 9 9 true
effect give @a[distance=5..100] slowness 5 1 true
effect give @s invisibility 5 0 true
effect give @s blindness 2 0 true