tag @s add blue.tr.checked
execute unless items entity @s contents *[trim] unless items entity @s contents #blue:tr/templates run return fail
execute if score #.tr.death_untrim blue.config matches 1 if items entity @s contents *[trim] run return run function blue:tr/inv/untrim/item
execute if score #.player blue.tr.died matches 1.. unless score #.drop_temp blue.misc >= #.tr.death_transfer_amount blue.config run return run function blue:tr/inv/died/swap
execute if entity @s[tag=blue.tr.extra] run return fail
data modify entity @s {} merge from storage blue:trims merge.return_item
scoreboard players operation @s blue.id = #.link blue.id
execute in overworld run tp 200600 1 200600