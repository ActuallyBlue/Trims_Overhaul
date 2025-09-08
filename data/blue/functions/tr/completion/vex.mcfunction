execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#CFC6A5"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Vex","color":"#CFC6A5"}]
tag @s add blue.tr.vex
advancement grant @s only blue:tr/trust vex
advancement grant @a only blue:tr/actual/vex
scoreboard players set @s blue.tr.mobs_killed 0
scoreboard players set #.tr.vex_completed blue.config 1
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Vex","color":"#CFC6A5"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/vex
loot give @s loot blue:tr/vex
scoreboard players reset #.vex_stored blue.misc
execute store result score #.temp blue.misc run clear @s vex_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.vex_stored blue.misc 4
data modify storage blue:data trims.vex.owner.text set from storage blue:data player_name
data modify storage blue:data trims.vex.owner.color set value "#CFC6A5"
playsound entity.vex.death player @a ~ ~ ~ 2 1
playsound entity.vex.death player @a ~ ~ ~ 2 0.5
playsound entity.vex.charge player @a ~ ~ ~ 2 0.5
playsound entity.allay.ambient_with_item player @a ~ ~ ~ 3 2
particle dust 0.81 0.78 0.65 1 ~ ~1 ~ 0.1 0.1 0.1 0.25 340
effect give @s strength 2 1 true
effect give @s speed 1 1 true