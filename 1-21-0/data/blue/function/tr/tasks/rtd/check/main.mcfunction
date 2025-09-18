tag @s add blue.tr.RTDCD
execute store success score #.temp blue.misc if score @s RTD.BLUE = @s blue.tr.RTDval
execute if score #.temp blue.misc matches 0 run playsound block.note_block.pling player @s ~ ~ ~ 3 0.5
execute if score #.temp blue.misc matches 1 run playsound block.note_block.pling player @s ~ ~ ~ 2.5 2
execute if entity @s[tag=blue.tr.RTD.wild_breed] run function blue:tr/tasks/rtd/check/wild_breed
execute if entity @s[tag=blue.tr.RTD.wild_tame] run function blue:tr/tasks/rtd/check/wild_tame
execute if entity @s[tag=blue.tr.RTD.wayfinder] run function blue:tr/tasks/rtd/check/wayfinder
execute if entity @s[tag=blue.tr.RTD.silence] run function blue:tr/tasks/rtd/check/silence
execute if entity @s[tag=blue.tr.RTD.raiser] run function blue:tr/tasks/rtd/check/raiser
execute if entity @s[tag=blue.tr.RTD.shaper] run function blue:tr/tasks/rtd/check/shaper
execute if entity @s[tag=blue.tr.RTD.sentry] run function blue:tr/tasks/rtd/check/sentry
execute if entity @s[tag=blue.tr.RTD.spire] run function blue:tr/tasks/rtd/check/spire
execute if entity @s[tag=blue.tr.RTD.coast] run function blue:tr/tasks/rtd/check/coast
execute if entity @s[tag=blue.tr.RTD.snout] run function blue:tr/tasks/rtd/check/snout
execute if entity @s[tag=blue.tr.RTD.ward] run function blue:tr/tasks/rtd/check/ward
execute if entity @s[tag=blue.tr.RTD.bolt] run function blue:tr/tasks/rtd/check/bolt
execute if entity @s[tag=blue.tr.RTD.flow] run function blue:tr/tasks/rtd/check/flow
execute if entity @s[tag=blue.tr.RTD.dune] run function blue:tr/tasks/rtd/check/dune
execute if entity @s[tag=blue.tr.RTD.tide] run function blue:tr/tasks/rtd/check/tide
execute if entity @s[tag=blue.tr.RTD.host] run function blue:tr/tasks/rtd/check/host
execute if entity @s[tag=blue.tr.RTD.eye] run function blue:tr/tasks/rtd/check/eye
execute if entity @s[tag=blue.tr.RTD.rib] run function blue:tr/tasks/rtd/check/rib
execute if entity @s[tag=blue.tr.RTD.vex] run function blue:tr/tasks/rtd/check/vex
advancement grant @s only blue:tr/tags tutorial_rtd
scoreboard players reset @s blue.tr.RTDtime
scoreboard players reset @s blue.tr.RTDval
scoreboard players reset @s RTD.BLUE