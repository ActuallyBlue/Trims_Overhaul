tag @s add blue.tr.snout
advancement grant @s only blue:tr/trust snout
advancement grant @a only blue:tr/display/snout
scoreboard players set @s blue.tr.piglin_trades 0
scoreboard players set #.tr.snout_completed blue.config 1
advancement revoke @s only blue:tr/quests/snout
data modify storage blue:data trims.logs.append.trim set value {"translate":"Snout","color":"#F2B01A"}
function blue:tr/completion/z/setup
data modify storage blue:data trims.snout.owner.text set from storage blue:data player_name
data modify storage blue:data trims.snout.owner.color set value "#F2B01A"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#F2B01A"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Snout","color":"#F2B01A"}]
function blue:tr/delayed/cmd/msg/snout
loot give @s loot blue:tr/snout
scoreboard players reset #.snout_stored blue.misc
execute store result score #.temp blue.misc run clear @s snout_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.snout_stored blue.misc 4
title @s title ""
playsound entity.villager.work_toolsmith player @a ~ ~ ~ 2 0.5
particle falling_dust yellow_glazed_terracotta ~ ~2 ~ 2 2.5 2 0 300
advancement revoke @s only blue:tr/quests/snout