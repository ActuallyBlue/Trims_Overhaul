tag @s add blue.tr.rtd_cooldown
execute store success score #.temp blue.misc if score @s RTD.BLUE = @s blue.tr.rtd_value
execute if score #.temp blue.misc matches 0 run playsound block.note_block.pling player @s ~ ~ ~ 3 0.5
execute if score #.temp blue.misc matches 0 run title @s subtitle {"text":"✗","color":"dark_red"}
execute if score #.temp blue.misc matches 1 run advancement grant @s[advancements={blue:tr/tags={tutorial_defender=false}}] only blue:tr/display/guides/defender
execute if score #.temp blue.misc matches 1 run playsound block.note_block.pling player @s ~ ~ ~ 2.5 2
execute if score #.temp blue.misc matches 1 run title @s subtitle {"text":"✓","color":"dark_green"}
title @s title ""
execute if entity @s[tag=blue.tr.rtd.wild_breed] run function blue:tr/tasks/rtd/check/wild_breed
execute if entity @s[tag=blue.tr.rtd.wild_tame] run function blue:tr/tasks/rtd/check/wild_tame
execute if entity @s[tag=blue.tr.rtd.wayfinder] run function blue:tr/tasks/rtd/check/wayfinder
execute if entity @s[tag=blue.tr.rtd.silence] run function blue:tr/tasks/rtd/check/silence
execute if entity @s[tag=blue.tr.rtd.raiser] run function blue:tr/tasks/rtd/check/raiser
execute if entity @s[tag=blue.tr.rtd.shaper] run function blue:tr/tasks/rtd/check/shaper
execute if entity @s[tag=blue.tr.rtd.sentry] run function blue:tr/tasks/rtd/check/sentry
execute if entity @s[tag=blue.tr.rtd.spire] run function blue:tr/tasks/rtd/check/spire
execute if entity @s[tag=blue.tr.rtd.coast] run function blue:tr/tasks/rtd/check/coast
execute if entity @s[tag=blue.tr.rtd.snout] run function blue:tr/tasks/rtd/check/snout
execute if entity @s[tag=blue.tr.rtd.ward] run function blue:tr/tasks/rtd/check/ward
execute if entity @s[tag=blue.tr.rtd.bolt] run function blue:tr/tasks/rtd/check/bolt
execute if entity @s[tag=blue.tr.rtd.flow] run function blue:tr/tasks/rtd/check/flow
execute if entity @s[tag=blue.tr.rtd.dune] run function blue:tr/tasks/rtd/check/dune
execute if entity @s[tag=blue.tr.rtd.tide] run function blue:tr/tasks/rtd/check/tide
execute if entity @s[tag=blue.tr.rtd.host] run function blue:tr/tasks/rtd/check/host
execute if entity @s[tag=blue.tr.rtd.eye] run function blue:tr/tasks/rtd/check/eye
execute if entity @s[tag=blue.tr.rtd.rib] run function blue:tr/tasks/rtd/check/rib
execute if entity @s[tag=blue.tr.rtd.vex] run function blue:tr/tasks/rtd/check/vex
scoreboard players reset @s blue.tr.rtd_time
scoreboard players reset @s blue.tr.rtd_value
scoreboard players reset @s RTD.BLUE