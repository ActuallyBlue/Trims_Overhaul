execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#BE20C7"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Spire","color":"#BE20C7"}]
tag @s add blue.tr.spire
advancement grant @s only blue:tr/trust spire
advancement grant @a only blue:tr/actual/spire
scoreboard players set @s blue.tr.dragons_killed 0
scoreboard players set #.tr.spire_completed blue.config 1
advancement revoke @s only blue:tr/quests/spire_crystals
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Spire","color":"#BE20C7"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/spire
loot give @s loot blue:tr/spire
scoreboard players reset #.spire_stored blue.misc
execute store result score #.temp blue.misc run clear @s spire_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.spire_stored blue.misc 4
data modify storage blue:data trims.spire.owner.text set from storage blue:data player_name
data modify storage blue:data trims.spire.owner.color set value "#BE20C7"
scoreboard players set #.reversal_charge blue.misc 54
execute rotated 0 0 positioned ~ ~-0.25 ~ run function blue:tr/effects/spire/emp/reversal/charge
scoreboard players reset #.reversal_charge blue.misc
effect give @s levitation 1 22 true
schedule function blue:tr/completion/z/levi 3t