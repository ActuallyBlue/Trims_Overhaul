execute unless predicate blue:shared/in_stronghold unless entity @s[tag=blue.tr.dragon_egg] run scoreboard players remove #.eye.scare_charge blue.misc 1
scoreboard players operation #.eye.scare_charge_old blue.misc = #.temp blue.misc
scoreboard players remove #.eye.scare_charge blue.misc 1