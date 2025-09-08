execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#F2B01A"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Coast","color":"#C1C888"}]
tag @s add blue.tr.coast
advancement grant @s only blue:tr/trust coast
advancement grant @a only blue:tr/actual/coast
scoreboard players set @s blue.tr.items_fished 0
scoreboard players set #.tr.coast_completed blue.config 1
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Coast","color":"#C1C888"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/coast
loot give @s loot blue:tr/coast
scoreboard players reset #.coast_stored blue.misc
execute store result score #.temp blue.misc run clear @s coast_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.coast_stored blue.misc 4
data modify storage blue:data trims.coast.owner.text set from storage blue:data player_name
data modify storage blue:data trims.coast.owner.color set value "#C1C888"
particle white_ash ~ ~1 ~ 2 2.25 2 0 1800
playsound item.brush.brushing.sand.complete player @a ~ ~ ~ 2 0.5
playsound entity.puffer_fish.death player @a ~ ~ ~ 0.8 1.5
playsound entity.cod.death player @a ~ ~ ~ 1 1.5
playsound entity.vex.hurt player @a ~ ~ ~ 0.75 0.8