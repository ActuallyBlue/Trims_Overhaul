execute if items entity @s contents #fishes on origin if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp0 blue.misc -596
execute unless score #.temp0 blue.misc matches -596 run return fail
scoreboard players reset #.temp0 blue.misc
tag @s add blue.tr.checked
execute if score #.coast.fire_cooldown blue.misc matches 1 run return run data modify entity @s PickupDelay set value 0s
execute if items entity @s contents cod on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/cod
execute if items entity @s contents salmon on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/salmon
execute if items entity @s contents cooked_cod on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/cod
execute if items entity @s contents pufferfish on origin at @s anchored eyes positioned ^ ^ ^0.5 run function blue:tr/effects/coast/fire/pufferfish
execute if items entity @s contents tropical_fish on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/tropical
execute if items entity @s contents cooked_salmon on origin at @s anchored eyes positioned ^ ^ ^0.5 summon item_display run function blue:tr/effects/coast/fire/salmon
kill