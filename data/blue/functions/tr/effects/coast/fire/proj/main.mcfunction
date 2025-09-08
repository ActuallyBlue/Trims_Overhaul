scoreboard players add @s blue.misc 1
kill @s[scores={blue.misc=20..}]
execute if entity @s[tag=blue.tr.coast_cod] run function blue:tr/effects/coast/fire/proj/cod
execute if entity @s[tag=blue.tr.coast_salmon] run function blue:tr/effects/coast/fire/proj/salmon
execute if entity @s[tag=blue.tr.coast_pufferfish] run function blue:tr/effects/coast/fire/proj/pufferfish
execute if entity @s[tag=blue.tr.coast_tropical] run function blue:tr/effects/coast/fire/proj/tropical/main