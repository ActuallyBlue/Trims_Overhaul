scoreboard players set @s blue.tr.current_trim 0
tag @s[tag=blue.tr.mats.eye] remove blue.tr.mats.eye
tag @s remove blue.tr.trim.eye
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/eye
scoreboard players set #.eye.scare_charge_old blue.misc 0
scoreboard players set #.eye.scare_charge blue.misc 0