tag @s add blue.tr.tide
advancement grant @s only blue:tr/trust tide
advancement grant @a only blue:tr/display/tide
scoreboard players set @s blue.tr.blocks_swam 0
scoreboard players set #.tr.tide_completed blue.config 1
advancement revoke @s only blue:tr/quests/tide
data modify storage blue:trims logs.append.trim set value {"translate":"Tide","color":"#199ADD"}
function blue:tr/completion/z/setup
data modify storage blue:trims tide.owner.text set from storage blue:shared player_name
data modify storage blue:trims tide.owner.color set value "#199ADD"
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#199ADD"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Tide","color":"#199ADD"}]
function blue:tr/delayed/cmd/msg/tide
scoreboard players set #.template_loot blue.misc 4
loot spawn ~ ~0.5 ~ loot blue:tr/tide
scoreboard players set #.template_loot blue.misc 1
playsound entity.elder_guardian.death player @a[distance=..24] ~ ~ ~ 3 0.65
particle dripping_water ~ ~1 ~ 2 2 2 0 480
function blue:tr/effects/tide/emp/water_burst
scoreboard players set #.tide.stacks blue.misc 10