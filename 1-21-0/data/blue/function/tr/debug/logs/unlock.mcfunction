playsound ui.button.click player @s 0 -128 0 0 1 0.75
execute unless data storage blue:data trims.logs.unlock run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.logs.empty","fallback":"Nothing has been stored in this type of log yet","color":"gray"}]
execute store result storage blue:data trims.logs.server int 0.00083334 run time query gametime
execute store result score #.temp blue.misc run data get storage blue:data trims.logs.server
data modify storage blue:data trims.logs.temp set from storage blue:data trims.logs.unlock
function blue:tr/debug/logs/z/ul