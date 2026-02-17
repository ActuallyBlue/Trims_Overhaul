scoreboard players add #.coast.shot_delay blue.misc 1
execute if score #.coast.double_shot blue.misc matches 1 unless score #.coast.shot_delay blue.misc matches 12.. run return 0
execute if score #.coast.double_shot blue.misc matches 2 unless score #.coast.shot_delay blue.misc matches 15.. run return 0
execute if score #.coast.double_shot blue.misc matches 3 unless score #.coast.shot_delay blue.misc matches 18.. run return 0
scoreboard players reset #.coast.shot_delay blue.misc
execute if score #.coast.double_shot blue.misc matches 1 at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/cod
execute if score #.coast.double_shot blue.misc matches 2 at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/salmon
execute if score #.coast.double_shot blue.misc matches 3 at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/tropical
scoreboard players reset #.coast.double_shot blue.misc