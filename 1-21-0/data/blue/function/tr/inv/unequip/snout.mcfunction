scoreboard players set @s blue.tr.current_trim 0
tag @s remove blue.tr.trim.snout
execute if score #.tr.armor_ownership blue.config matches 1 run function blue:tr/debug/revoke/snout
kill @e[tag=blue.tr.gamble.display,type=text_display]
execute as @e[tag=blue.tr.gamble.item,type=item] run data merge entity @s {PickupDelay:10s,Age:400,Health:5s}
tag @e[tag=blue.tr.gamble.item,type=item] remove blue.tr.ground
tag @e[tag=blue.tr.gamble.item,type=item] remove blue.tr.gamble.item