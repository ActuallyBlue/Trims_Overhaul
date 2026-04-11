execute unless predicate blue:shared/in_stronghold unless entity @s[tag=blue.tr.dragon_egg] run scoreboard players remove #.eye.scare_charge blue.misc 1
scoreboard players remove #.eye.scare_charge blue.misc 1
scoreboard players operation #.temp blue.misc = #.eye.scare_charge blue.misc
scoreboard players operation #.temp blue.misc /= #20 blue.misc
execute unless score #.temp blue.misc = #.eye.scare_charge_old blue.misc if score #.eye.scare_charge blue.misc matches 18.. run playsound entity.ender_eye.launch player @s ~ ~ ~ 0.25 2
scoreboard players operation #.eye.scare_charge_old blue.misc = #.temp blue.misc