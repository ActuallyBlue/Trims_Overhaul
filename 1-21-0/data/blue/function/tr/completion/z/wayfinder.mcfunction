schedule function blue:tr/completion/z/no_ui 14t
scoreboard players set @s blue.tr.blocks_walked 0
execute if score @s blue.tr.structures matches 22 run scoreboard players set #.temp TrimCMDs.BLUE 52
execute if score @s blue.tr.structures matches 22 run function blue:tr/delayed/5tick/cmd/msg/wayfinder
execute if score @s blue.tr.structures matches 22 run playsound block.end_portal.spawn player @a ~ ~ ~ 1.5 1.6
execute if score @s blue.tr.structures matches 22 run particle enchant ~ ~2 ~ 0.4 0.6 0.4 5 256
execute if score @s blue.tr.structures matches 32 run scoreboard players set #.temp TrimCMDs.BLUE 54
execute if score @s blue.tr.structures matches 32 run function blue:tr/delayed/5tick/cmd/msg/wayfinder
execute if score @s blue.tr.structures matches 32 run playsound block.end_portal.spawn player @a ~ ~ ~ 2 1.2
execute if score @s blue.tr.structures matches 32 run particle enchant ~ ~2 ~ 0.4 0.6 0.4 5 512
execute unless score @s blue.tr.structures matches 12 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#F1FFC8"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Wayfinder","color":"#F1FFC8"}]
tag @s add blue.tr.wayfinder
advancement grant @s only blue:tr/trust wayfinder
advancement grant @a only blue:tr/actual/wayfinder
scoreboard players set #.tr.wayfinder_completed blue.config 1
advancement revoke @s only blue:tr/quests/wayfinder
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Wayfinder","color":"#F1FFC8"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/wayfinder
loot give @s loot blue:tr/wayfinder
scoreboard players reset #.wayfinder_stored blue.misc
execute store result score #.temp blue.misc run clear @s wayfinder_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.wayfinder_stored blue.misc 4
data modify storage blue:data trims.wayfinder.owner.text set from storage blue:data player_name
data modify storage blue:data trims.wayfinder.owner.color set value "#F1FFC8"
playsound block.end_portal.spawn player @a ~ ~ ~ 1.2 1.6
particle enchant ~ ~2 ~ 0.4 0.6 0.4 10 640