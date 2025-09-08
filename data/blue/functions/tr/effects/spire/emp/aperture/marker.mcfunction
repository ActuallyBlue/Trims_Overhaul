scoreboard players add #.aperture_sound blue.misc 1
scoreboard players add #.aperture_duration blue.misc 1
execute if score #.aperture_sound blue.misc matches 100 store success score #.aperture_sound blue.misc run playsound block.portal.ambient player @a[x=0] ~ ~ ~ 17 0.5
execute positioned ~-9 ~-1.5 ~-9 as @e[dx=18,dy=-40,dz=18,type=!marker] at @s run function blue:tr/effects/spire/emp/aperture/entity
execute if score #.aperture_duration blue.misc matches 900.. run function blue:tr/effects/spire/emp/aperture/kill
execute unless score #.aperture_duration blue.misc matches ..850 run return 0
particle end_rod ^-1.4 ^1.1 ^-1.1 ^-2000000 ^800000 ^-390000 0.0000004 0 force @a[scores={blue.particles=1..}]
particle end_rod ^-1.1 ^1.1 ^-1.4 ^-760000 ^800000 ^-1800000 0.0000004 0 force
particle end_rod ^-1.1 ^1.1 ^1.4 ^-390000 ^800000 ^2000000 0.0000004 0 force @a[scores={blue.particles=1..}]
particle end_rod ^-1.4 ^1.1 ^1.1 ^-1800000 ^800000 ^760000 0.0000004 0 force
particle end_rod ^1.1 ^1.1 ^-1.4 ^390000 ^800000 ^-2000000 0.0000004 0 force @a[scores={blue.particles=1..}]
particle end_rod ^1.4 ^1.1 ^-1.1 ^1800000 ^800000 ^-760000 0.0000004 0 force
particle end_rod ^1.4 ^1.1 ^1.1 ^2000000 ^800000 ^390000 0.0000004 0 force @a[scores={blue.particles=1..}]
particle end_rod ^1.1 ^1.1 ^1.4 ^760000 ^800000 ^1800000 0.0000004 0 force
particle dragon_breath ~ ~0.6 ~ 5.3 0.3 5.3 0 3 force @a[scores={blue.particles=1..}]
particle dragon_breath ~ ~0.6 ~ 5.3 0.3 5.3 0 8 force @a[scores={blue.particles=2..}]
particle dragon_breath ~ ~0.6 ~ 5.3 0.3 5.3 0 7 force
particle end_rod ~ ~80 ~ 0.3 25 0.3 0.03 2 force
particle end_rod ~ ~80 ~ 0.3 25 0.3 0.03 2 force @a[scores={blue.particles=2..}]
particle firework ^-10 ^4 ^ 0.1 0.1 0.1 0 2 force
particle firework ^10 ^4 ^ 0.1 0.1 0.1 0 2 force
particle firework ^ ^4 ^-10 0.1 0.1 0.1 0 2 force
particle firework ^ ^4 ^10 0.1 0.1 0.1 0 2 force
particle explosion ~ ~1 ~ 0 0 0 0 1 force
tp @s ~ ~ ~ ~-2 0