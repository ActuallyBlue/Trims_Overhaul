execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#199ADD"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Tide","color":"#199ADD"}]
tag @s add blue.tr.tide
advancement grant @s only blue:tr/trust tide
advancement grant @a only blue:tr/actual/tide
scoreboard players set @s blue.tr.blocks_swam 0
scoreboard players set #.tr.tide_completed blue.config 1
advancement revoke @s only blue:tr/quests/tide
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Tide","color":"#199ADD"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/tide
loot give @s loot blue:tr/tide
scoreboard players reset #.tide_stored blue.misc
execute store result score #.temp blue.misc run clear @s tide_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.tide_stored blue.misc 4
data modify storage blue:data trims.tide.owner.text set from storage blue:data player_name
data modify storage blue:data trims.tide.owner.color set value "#199ADD"
playsound entity.elder_guardian.death player @a[distance=..24] ~ ~ ~ 3 0.65
particle dripping_water ~ ~1 ~ 2 2 2 0 480
function blue:tr/effects/tide/emp/water_burst
scoreboard players set #.tide.stacks blue.misc 10