kill
schedule function blue:tr/effects/dune/raisure/loop 1t
execute if entity @a[tag=blue.tr.dune,dy=1,limit=1] run summon falling_block ~0.5 ~ ~0.5 {Time:360,Motion:[0.0d,0.75d,0.0d],Tags:["blue.tr.dune_block","smithed.entity"],Passengers:[{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:-1.5,width:1.5},{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:0.25,width:1.5}],DropItem:0b}
execute as @a[tag=blue.tr.dune,dy=1,limit=1] at @s run function blue:tr/effects/dune/raisure/wall_motion
execute if entity @a[tag=blue.tr.dune,dy=1,limit=1] run return 0
summon falling_block ~0.5 ~ ~0.5 {Time:200,Tags:["blue.tr.dune_block","smithed.entity"],Passengers:[{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:-1.5,width:1.5},{id:"interaction",Tags:["blue.tr.dune_hitbox"],height:0.25,width:1.5}],DropItem:0b}