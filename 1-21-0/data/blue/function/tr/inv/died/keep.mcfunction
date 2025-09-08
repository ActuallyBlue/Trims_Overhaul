execute if score #.player blue.tr.died matches 1.. unless score #.drop_temp blue.misc >= #.tr.death_transfer_amount blue.config run return run function blue:tr/inv/died/swap
scoreboard players operation @s blue.id = #.link blue.id
data modify entity @s {} merge from storage blue:data trims.merge.return_item
execute in overworld run tp 200600 1 200600