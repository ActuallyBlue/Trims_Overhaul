advancement revoke @s only blue:tr/quests/dune
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_dune=false}}] run return fail
execute if score #.tr.dune_completed blue.config matches 2 unless entity @s[tag=blue.tr.dune] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
execute at @e[type=falling_block,distance=..12] positioned ~-1 ~-2.5 ~-1 run tag @e[type=!#blue:tr/peaceful,dx=1,dy=4,dz=1] add blue.tr.dune_quest
execute store result score #.temp blue.misc run tag @e[tag=blue.tr.dune_quest,distance=..25] remove blue.tr.dune_quest
execute if score #.temp blue.misc matches 6.. run function blue:tr/completion/dune