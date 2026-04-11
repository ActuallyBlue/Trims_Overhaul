tag @s add blue.tr.spire
advancement grant @s only blue:tr/trust spire
advancement grant @a only blue:tr/display/spire
scoreboard players set @s blue.tr.dragons_killed 0
scoreboard players set #.tr.spire_completed blue.config 1
advancement revoke @s only blue:tr/quests/spire_crystals
data modify storage blue:trims logs.append.trim set value {"translate":"Spire","color":"#BE20C7"}
function blue:tr/completion/z/setup
data modify storage blue:trims spire.owner.text set from storage blue:shared player_name
data modify storage blue:trims spire.owner.color set value "#BE20C7"
execute if score #.tr.armor_ownership blue.config matches 1 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#BE20C7"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Spire","color":"#BE20C7"}]
function blue:tr/delayed/cmd/msg/spire
scoreboard players set #.template_loot blue.misc 4
loot spawn ~ ~0.5 ~ loot blue:tr/spire
scoreboard players set #.template_loot blue.misc 1
scoreboard players set #.spire.reversal_charge blue.misc 54
execute rotated 0 0 positioned ~ ~-0.25 ~ run function blue:tr/effects/spire/emp/reversal/charge
scoreboard players reset #.spire.reversal_charge blue.misc
effect give @s levitation 1 22 true
schedule function blue:tr/completion/z/levi 3t