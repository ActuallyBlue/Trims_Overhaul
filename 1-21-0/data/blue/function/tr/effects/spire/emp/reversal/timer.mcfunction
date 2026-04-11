scoreboard players add #.spire.reversal_timer blue.misc 10
execute unless score #.spire.reversal_charge blue.misc matches 25.. unless entity @s[x_rotation=-90..-75] store success score #.spire.reversal_timer blue.misc run scoreboard players set #.spire.reversal_charge blue.misc 0
execute if score #.spire.reversal_charge blue.misc matches 10..69 run particle enchant ~ ~1 ~ 0.1 0.1 0.1 3 2
scoreboard players set #.temp0 blue.misc -7412
execute if predicate blue:shared/is_sneaking run function blue:tr/effects/spire/emp/reversal/release
scoreboard players reset #.temp0 blue.misc
execute if score #.spire.reversal_timer blue.misc matches ..400 run return fail
execute if score #.spire.reversal_charge blue.misc matches 25.. run playsound block.beacon.deactivate player @a ~ ~ ~ 2 1.5
scoreboard players set #.spire.reversal_charge blue.misc -50
scoreboard players reset #.spire.reversal_timer blue.misc
scoreboard players reset #.spire.can_plunge blue.misc