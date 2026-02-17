tag @s[tag=blue.tr.RTD.wild_breed] remove blue.tr.RTD.wild_breed
tag @s[tag=blue.tr.RTD.wild_tame] remove blue.tr.RTD.wild_tame
tag @s[tag=blue.tr.RTD.wayfinder] remove blue.tr.RTD.wayfinder
tag @s[tag=blue.tr.RTD.silence] remove blue.tr.RTD.silence
tag @s[tag=blue.tr.RTD.raiser] remove blue.tr.RTD.raiser
tag @s[tag=blue.tr.RTD.shaper] remove blue.tr.RTD.shaper
tag @s[tag=blue.tr.RTD.sentry] remove blue.tr.RTD.sentry
tag @s[tag=blue.tr.RTD.spire] remove blue.tr.RTD.spire
tag @s[tag=blue.tr.RTD.coast] remove blue.tr.RTD.coast
tag @s[tag=blue.tr.RTD.snout] remove blue.tr.RTD.snout
tag @s[tag=blue.tr.RTD.ward] remove blue.tr.RTD.ward
tag @s[tag=blue.tr.RTD.dune] remove blue.tr.RTD.dune
tag @s[tag=blue.tr.RTD.tide] remove blue.tr.RTD.tide
tag @s[tag=blue.tr.RTD.host] remove blue.tr.RTD.host
tag @s[tag=blue.tr.RTD.eye] remove blue.tr.RTD.eye
tag @s[tag=blue.tr.RTD.rib] remove blue.tr.RTD.rib
tag @s[tag=blue.tr.RTD.vex] remove blue.tr.RTD.vex
scoreboard players enable @s RTD.BLUE
tag @s add blue.tr.RTDCD
execute store result score @s blue.tr.RTDval run loot spawn 0 0 0 loot blue:tr/z/rng_50
playsound entity.arrow.hit_player player @s ~ ~ ~ 3 0.5
title @s times 10t 5s 1s
execute if entity @s[advancements={blue:tr/tags={tutorial_defender=false}}] run function blue:tr/tasks/rtd/first