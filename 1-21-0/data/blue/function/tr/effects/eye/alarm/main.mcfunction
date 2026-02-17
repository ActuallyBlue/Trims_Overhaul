advancement revoke @s only blue:tr/alarm
execute unless entity @s[tag=blue.tr.eye] run function blue:tr/effects/eye/alarm/positioned with storage blue:trims eye
execute unless score #.temp blue.misc matches -8213 run return fail
execute store success score #.temp blue.misc if predicate blue:shared/in_stronghold
execute if score #.temp blue.misc matches 0 run playsound block.note_block.bell player @a[tag=blue.tr.eye,limit=1] ~ ~ ~ 1 1 0.75
execute if score #.temp blue.misc matches 1 run playsound block.note_block.bell player @a[tag=blue.tr.eye,limit=1] ~ ~ ~ 1 0.5 0.8
execute if score #.temp blue.misc matches 0 run title @a[tag=blue.tr.eye,limit=1] actionbar [{"selector":"@s","color":"green"},{"translate":"blue.tr.alarm_left","fallback":" has left the Stronghold","color":"dark_green"}]
execute if score #.temp blue.misc matches 1 run title @a[tag=blue.tr.eye,limit=1] actionbar [{"selector":"@s","color":"green"},{"translate":"blue.tr.alarm_enter","fallback":" has entered the Stronghold","color":"dark_green"}]