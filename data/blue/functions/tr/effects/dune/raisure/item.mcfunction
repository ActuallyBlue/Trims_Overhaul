execute on origin run return 0
execute unless data entity @s Item{id:"minecraft:sand"} run return 0
execute if score #.temp blue.misc matches 1 run summon falling_block ~0.5 ~0.75 ~0.5 {Time:300,Motion:[0.0d,0.375d,0.0d],Tags:["blue.tr.dune_block","smithed.entity"],BlockState:{Name:"sand"},Passengers:[{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:-1.5,width:1.5},{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:0.5,width:1.5}],DropItem:0b}
execute if score #.temp blue.misc matches 0 run summon falling_block ~0.5 ~0.75 ~0.5 {Time:300,Motion:[0.0d,0.75d,0.0d],Tags:["blue.tr.dune_block","smithed.entity"],BlockState:{Name:"sand"},Passengers:[{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:-1.5,width:1.5},{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:0.25,width:1.5}],DropItem:0b}
execute if score #.temp blue.misc matches 0 if entity @a[tag=blue.tr.dune,dy=0.5,limit=1] run scoreboard players set #.temp blue.misc -5256
execute if score #.temp blue.misc matches -5256 positioned ~0.5 ~0.75 ~0.5 run tag @e[type=falling_block,tag=blue.tr.dune_block,distance=..0.01,limit=1] add blue.tr.dune.no_sandstorm
schedule function blue:tr/effects/dune/raisure/loop 1t
kill