scoreboard players add @s blue.misc 1
execute if entity @s[tag=blue.tr.coast_cod] run return run function blue:tr/effects/coast/fire/proj/cod
execute if entity @s[tag=blue.tr.coast_salmon] run return run function blue:tr/effects/coast/fire/proj/salmon
execute if entity @s[tag=blue.tr.coast_pufferfish] run return run function blue:tr/effects/coast/fire/proj/pufferfish
execute if entity @s[tag=blue.tr.coast_tropical] run function blue:tr/effects/coast/fire/proj/tropical/main