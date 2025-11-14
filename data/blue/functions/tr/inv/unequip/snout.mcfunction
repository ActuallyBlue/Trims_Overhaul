scoreboard players set @s blue.tr.current_trim 0
tag @s remove blue.tr.trim.snout
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/snout
kill @e[type=text_display,tag=blue.tr.gamble.display]
execute as @e[type=item,tag=blue.tr.gamble.item] run data merge entity @s {PickupDelay:10s,Age:400,Health:5s}
tag @e[type=item,tag=blue.tr.gamble.item] remove blue.tr.ground
tag @e[type=item,tag=blue.tr.gamble.item] remove blue.tr.gamble.item