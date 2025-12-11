tag @s add blue.tr.ward
advancement grant @s only blue:tr/trust ward
advancement grant @a only blue:tr/display/ward
scoreboard players set @s blue.tr.damage_blocked 0
scoreboard players set #.tr.ward_completed blue.config 1
advancement revoke @s only blue:tr/quests/ward_stored
scoreboard objectives add blue.tr.damage_blocked custom:damage_blocked_by_shield
data modify storage blue:trims logs.append.trim set value {"translate":"Ward","color":"#5C70AE"}
function blue:tr/completion/z/setup
data modify storage blue:trims ward.owner.text set from storage blue:shared player_name
data modify storage blue:trims ward.owner.color set value "#5C70AE"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#5C70AE"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Ward","color":"#5C70AE"}]
function blue:tr/delayed/cmd/msg/ward
loot give @s loot blue:tr/ward
scoreboard players reset #.ward_stored blue.misc
execute store result score #.temp blue.misc run clear @s ward_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.ward_stored blue.misc 4
playsound item.shield.break player @a ~ ~ ~ 2 0.5
playsound item.shield.block player @a ~ ~ ~ 2 0.5
playsound item.shield.block player @a ~ ~ ~ 2 1
particle electric_spark ~ ~ ~ 2.5 2 2.5 0.5 500
particle wax_off ~ ~ ~ 4 2.5 4 0.2 680
scoreboard players set #.cast blue.misc 0
scoreboard players set #.temp blue.misc 0
execute anchored feet rotated ~ 0 positioned ^2.25 ^ ^-0.1 run function blue:tr/effects/ward/kinetic/field/expand