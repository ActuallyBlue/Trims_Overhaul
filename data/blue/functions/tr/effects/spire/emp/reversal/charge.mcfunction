scoreboard players reset #.cast blue.misc
scoreboard players add #.reversal_charge blue.misc 1
execute if score #.reversal_charge blue.misc matches 25.. run effect give @s slowness 1 0 true
execute if score #.reversal_charge blue.misc matches 25 run playsound block.beacon.power_select player @s ~ ~ ~ 1.5 1.25
execute if score #.reversal_charge blue.misc matches 25 positioned ~0.55 ~0.1 ~ run function blue:tr/effects/spire/emp/reversal/cast_one
execute if score #.reversal_charge blue.misc matches 40 run playsound block.beacon.power_select player @s ~ ~ ~ 2 1.5
execute if score #.reversal_charge blue.misc matches 40 positioned ~0.55 ~0.15 ~ run function blue:tr/effects/spire/emp/reversal/cast_two
execute if score #.reversal_charge blue.misc matches 40 run scoreboard players reset #.cast blue.misc
execute if score #.reversal_charge blue.misc matches 40 positioned ~0.55 ~0.27 ~ run function blue:tr/effects/spire/emp/reversal/cast_two
execute if score #.reversal_charge blue.misc matches 55.. run effect give @s slowness 1 1 true
execute if score #.reversal_charge blue.misc matches 55 run playsound block.beacon.power_select player @s ~ ~ ~ 2.5 1.75
execute if score #.reversal_charge blue.misc matches 55 positioned ~0.55 ~0.34 ~ run function blue:tr/effects/spire/emp/reversal/cast_three
execute if score #.reversal_charge blue.misc matches 55 run scoreboard players reset #.cast blue.misc
execute if score #.reversal_charge blue.misc matches 55 positioned ~0.55 ~0.425 ~ run function blue:tr/effects/spire/emp/reversal/cast_three
execute if score #.reversal_charge blue.misc matches 55 run scoreboard players reset #.cast blue.misc
execute if score #.reversal_charge blue.misc matches 55 positioned ~0.55 ~0.5 ~ run function blue:tr/effects/spire/emp/reversal/cast_three
execute unless score #.reversal_charge blue.misc matches 70 run return 0
playsound block.beacon.power_select player @s ~ ~ ~ 3 2
execute positioned ~0.55 ~0.6 ~ run function blue:tr/effects/spire/emp/reversal/cast_four
scoreboard players reset #.cast blue.misc
execute positioned ~0.55 ~0.72 ~ run function blue:tr/effects/spire/emp/reversal/cast_four
scoreboard players reset #.cast blue.misc
execute positioned ~0.55 ~0.85 ~ run function blue:tr/effects/spire/emp/reversal/cast_four
scoreboard players reset #.cast blue.misc
execute positioned ~0.55 ~1.05 ~ run function blue:tr/effects/spire/emp/reversal/cast_four
scoreboard players reset #.cast blue.misc
execute positioned ~0.55 ~1.3 ~ run function blue:tr/effects/spire/emp/reversal/cast_five