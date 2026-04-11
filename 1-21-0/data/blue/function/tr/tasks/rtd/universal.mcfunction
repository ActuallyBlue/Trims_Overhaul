tag @s[tag=blue.tr.rtd.wild_breed] remove blue.tr.rtd.wild_breed
tag @s[tag=blue.tr.rtd.wild_tame] remove blue.tr.rtd.wild_tame
tag @s[tag=blue.tr.rtd.wayfinder] remove blue.tr.rtd.wayfinder
tag @s[tag=blue.tr.rtd.silence] remove blue.tr.rtd.silence
tag @s[tag=blue.tr.rtd.raiser] remove blue.tr.rtd.raiser
tag @s[tag=blue.tr.rtd.shaper] remove blue.tr.rtd.shaper
tag @s[tag=blue.tr.rtd.sentry] remove blue.tr.rtd.sentry
tag @s[tag=blue.tr.rtd.spire] remove blue.tr.rtd.spire
tag @s[tag=blue.tr.rtd.coast] remove blue.tr.rtd.coast
tag @s[tag=blue.tr.rtd.snout] remove blue.tr.rtd.snout
tag @s[tag=blue.tr.rtd.ward] remove blue.tr.rtd.ward
tag @s[tag=blue.tr.rtd.bolt] remove blue.tr.rtd.bolt
tag @s[tag=blue.tr.rtd.flow] remove blue.tr.rtd.flow
tag @s[tag=blue.tr.rtd.dune] remove blue.tr.rtd.dune
tag @s[tag=blue.tr.rtd.tide] remove blue.tr.rtd.tide
tag @s[tag=blue.tr.rtd.host] remove blue.tr.rtd.host
tag @s[tag=blue.tr.rtd.eye] remove blue.tr.rtd.eye
tag @s[tag=blue.tr.rtd.rib] remove blue.tr.rtd.rib
tag @s[tag=blue.tr.rtd.vex] remove blue.tr.rtd.vex
scoreboard players enable @s RTD.BLUE
tag @s add blue.tr.rtd_cooldown
execute store result score @s blue.tr.rtd_value run random value 1..100
playsound entity.arrow.hit_player player @s ~ ~ ~ 3 0.5
title @s times 10t 5s 1s
execute if entity @s[advancements={blue:tr/tags={tutorial_defender=false}}] run function blue:tr/tasks/rtd/first