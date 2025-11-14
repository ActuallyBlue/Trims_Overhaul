execute store success score #.tr.eye_toggle blue.config unless score #.tr.eye_toggle blue.config matches 1
execute if score #.tr.eye_toggle blue.config matches 0 run tellraw @s ["",{"translate":"Eye","color":"#1F8A46"}," ",{"translate":"blue.tr.usage","fallback":"Usage"},{"text":": ","color":"dark_gray"},{"translate":"options.off","color":"dark_red"}]
execute if score #.tr.eye_toggle blue.config matches 0 run playsound block.note_block.chime player @s ~ ~ ~ 0.5 0.6
execute if score #.tr.eye_toggle blue.config matches 1 run tellraw @s ["",{"translate":"Eye","color":"#1F8A46"}," ",{"translate":"blue.tr.usage","fallback":"Usage"},{"text":": ","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}]
execute if score #.tr.eye_toggle blue.config matches 1 run playsound block.note_block.chime player @s ~ ~ ~ 0.5 0.9
advancement grant @a only blue:tr/inv_checks