execute if score #.rib.strict_projectile blue.config matches 1 if score @s blue.tr.combat matches 200.. run return 0
scoreboard players set #.rib.was_sneaking blue.misc 1
execute positioned ^ ^ ^0.6 store success score #.temp blue.misc run tp @e[tag=blue.tr.rib_hitbox,limit=1,type=interaction] ~ ~-0.2 ~
execute unless score #.temp blue.misc matches 1 positioned ^ ^ ^0.6 run summon interaction ~ ~-0.2 ~ {width:0.4,height:0.5,Tags:["blue.tr.rib_hitbox"],response:1b}
execute positioned ^ ^ ^0.6 as @e[tag=blue.tr.rib_hitbox,distance=..5,limit=1,type=interaction] run function blue:tr/effects/rib/proj/interaction
execute if score #.rib.was_sneaking blue.misc matches 3 run function blue:tr/effects/rib/proj/spawn_fireball
execute if score #.rib.was_sneaking blue.misc matches 2 run function blue:tr/effects/rib/proj/spawn_skull