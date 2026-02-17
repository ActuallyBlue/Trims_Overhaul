execute on attacker if score @s blue.tr.current_trim matches 9 run return fail
scoreboard players set #.remove_Silent blue.misc 1
particle sculk_charge_pop ~ ~1 ~ 0.5 0.3 0.5 0 10
data modify entity @s Silent set value 1b
tag @s add blue.tr.silence.Silent