scoreboard players remove #.snout.overlord_duration blue.misc 1
execute if score #.snout.overlord_duration blue.misc matches 1.. run schedule function blue:tr/effects/snout/gamble/overlord_loop 1t
execute at @a[tag=blue.tr.snout] run particle item{item:raw_gold_block} ~ ~1 ~ 0.3 0.4 0.3 0.05 2