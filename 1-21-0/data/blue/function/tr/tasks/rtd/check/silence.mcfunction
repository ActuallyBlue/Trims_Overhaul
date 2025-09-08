tag @s remove blue.tr.RTD.silence
execute if score #.temp blue.misc matches 1 unless score #.tr.silence_completed blue.config matches 1 run function blue:tr/tasks/silence