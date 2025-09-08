playsound ui.button.click player @s 0 -128 0 0 1 0.75
execute store result storage blue:data trims.telemetry.current int 0.00083334 run time query gametime
execute store result score #.temp blue.misc run data get storage blue:data trims.telemetry.current
execute store result score #.temp0 blue.misc run data get storage blue:data trims.telemetry.installation
execute store result storage blue:data trims.telemetry.time int -1 run scoreboard players operation #.temp0 blue.misc -= #.temp blue.misc
tellraw @s [{"translate":"blue.tr.telemetry_start","fallback":"Server started ","color":"gray"},{"storage":"blue:data","nbt":"trims.telemetry.current","color":"white"},{"translate":"blue.tr.telemetry_ago","fallback":" minutes ago"},"\n",{"translate":"blue.tr.telemetry_install","fallback":"Datapack downloaded ","color":"gray"},{"storage":"blue:data","nbt":"trims.telemetry.time","color":"white"},{"translate":"blue.tr.telemetry_ago","fallback":" minutes ago"},"\n"]
execute unless data storage blue:data trims.telemetry.completion run tellraw @s {"translate":"blue.tr.no_telemetry","fallback":"No objectives have been completed yet"}
execute unless data storage blue:data trims.telemetry.completion run return 0
data modify storage blue:data trims.telemetry.temp set from storage blue:data trims.telemetry.completion
function blue:tr/debug/z/loop