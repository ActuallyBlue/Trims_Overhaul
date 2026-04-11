particle reverse_portal ^ ^ ^1.25 0 0 0 0.01 1 force
scoreboard players remove #.temp blue.misc 1
execute if score #.temp blue.misc matches ..200 run function blue:tr/effects/wayfinder/emp/warp/inner_particles
execute if score #.temp blue.misc matches 1.. positioned ~ ~-0.1 ~ rotated ~6 0 run function blue:tr/effects/wayfinder/emp/warp/raycast
execute if score #.temp blue.misc matches 0 run scoreboard players set #.temp blue.misc 300