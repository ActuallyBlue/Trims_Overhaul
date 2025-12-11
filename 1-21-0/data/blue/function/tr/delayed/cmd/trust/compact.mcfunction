execute store success score #.temp blue.misc if entity @s[tag=!blue.tr.trim.wayfinder,tag=!blue.tr.trim.silence,tag=!blue.tr.trim.sentry,tag=!blue.tr.trim.raiser,tag=!blue.tr.trim.shaper,tag=!blue.tr.trim.spire,tag=!blue.tr.trim.coast,tag=!blue.tr.trim.snout,tag=!blue.tr.trim.dune,tag=!blue.tr.trim.wild,tag=!blue.tr.trim.tide,tag=!blue.tr.trim.host,tag=!blue.tr.trim.bolt,tag=!blue.tr.trim.flow,tag=!blue.tr.trim.ward,tag=!blue.tr.trim.rib,tag=!blue.tr.trim.vex,tag=!blue.tr.trim.eye]
execute if score #.temp blue.misc matches 1 run playsound ui.button.click player @s 0 -128 0 0 0.75 1
execute if score #.temp blue.misc matches 1 run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.no_equipped_trim","fallback":"You don't have a trim equipped","color":"gray"}]
execute if score #.temp blue.misc matches 0 unless score @s blue.tr.current_trim matches 1.. run playsound ui.button.click player @s 0 -128 0 0 0.75 1
execute if score #.temp blue.misc matches 0 unless score @s blue.tr.current_trim matches 1.. run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.not_trim_owner","fallback":"You aren't the owner of this trim","color":"gray"}]
execute store result storage blue:trims temp.score int 1 run scoreboard players get @s blue.tr.current_trim
function blue:tr/delayed/cmd/trust/translate with storage blue:trims temp
playsound ui.button.click player @s 0 -128 0 0 2 0.75
data remove storage blue:trims display
scoreboard players operation #.players blue.misc = #.tr.trust_compact blue.config
function blue:tr/delayed/cmd/trust/pre with storage blue:trims temp
tellraw @s [{"text":"-- -- -- -- -- -- -- -- -- -- -- -- -- --\n","color":"gray"},{"storage":"blue:trims","nbt":"display[]","separator":{"text":", ","color":"gray"},"interpret":true},"\n-- -- -- -- -- -- -- -- -- -- -- -- -- --"]