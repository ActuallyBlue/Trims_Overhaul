execute if score #.player blue.tr.died matches 1.. unless score #.drop_temp blue.misc >= #.tr.death_transfer_amount blue.config run function blue:tr/inv/died/swap
execute if score #.temp blue.misc matches 1 run return 0
execute if entity @s[tag=blue.tr.extra] run return 0
data modify entity @s {} merge from storage blue:data trims.merge.return_item
scoreboard players operation @s blue.id = #.link blue.id
execute in overworld run tp 200600 1 200600