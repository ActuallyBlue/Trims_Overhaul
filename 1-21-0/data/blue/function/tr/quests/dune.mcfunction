advancement revoke @s only blue:tr/quests/dune req
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_dune=false}}] run return fail
execute if score #.tr.dune_completed blue.config matches 2 unless entity @s[tag=blue.tr.dune] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute at @e[distance=..12,type=falling_block,nbt={BlockState:{Name:"minecraft:suspicious_sand"}}] positioned ~-1 ~-2.5 ~-1 run tag @e[type=!#blue:shared/peaceful,dx=1,dy=4,dz=1] add blue.tr.dune_quest
execute store result score #.temp blue.misc run tag @e[tag=blue.tr.dune_quest,distance=..25] remove blue.tr.dune_quest
execute if score #.temp blue.misc >= #.tr.dune_quest blue.config run function blue:tr/completion/dune