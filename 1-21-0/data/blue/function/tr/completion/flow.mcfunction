execute if score #.tr.objective_announcements blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"selector":"@s","color":"#85B2C5"}," ",{"translate":"blue.tr.announce_completion","fallback":"has completed the objective for","color":"gray"}," ",{"translate":"Flow","color":"#85B2C5"}]
tag @s add blue.tr.flow
advancement grant @s only blue:tr/trust flow
advancement grant @a only blue:tr/actual/flow
scoreboard players set @s blue.tr.ominous_vault 0
scoreboard players set #.tr.flow_completed blue.config 1
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Flow","color":"#85B2C5"}
function blue:tr/completion/z/setup
function blue:tr/delayed/5tick/cmd/msg/flow
loot give @s loot blue:tr/flow
scoreboard players reset #.flow_stored blue.misc
execute store result score #.temp blue.misc run clear @s flow_armor_trim_smithing_template 0
execute if score #.temp blue.misc matches 0 run scoreboard players set #.flow_stored blue.misc 4
data modify storage blue:data trims.flow.owner.text set from storage blue:data player_name
data modify storage blue:data trims.flow.owner.color set value "#85B2C5"
summon wind_charge ~ ~ ~2 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~1.41 ~ ~1.41 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~2 ~ ~ {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~1.41 ~ ~-1.41 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~ ~ ~-2 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~-1.41 ~ ~-1.41 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~-2 ~ ~ {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
summon wind_charge ~-1.41 ~ ~1.41 {acceleration_power:0.1,Motion:[0.0d,-0.5d,0.0d]}
playsound block.trial_spawner.ominous_activate player @a ~ ~ ~ 3 0.5
particle trial_spawner_detection_ominous ~ ~-0.5 ~ 3 3 3 0 1000