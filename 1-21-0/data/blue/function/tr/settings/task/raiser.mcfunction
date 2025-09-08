scoreboard players operation #.temp blue.misc = #.tr.raiser_completed blue.config
execute if score #.temp blue.misc matches 2 run scoreboard players set #.tr.raiser_completed blue.config 0
execute if score #.temp blue.misc matches 2 run tellraw @s [{"translate":"Raiser","color":"#95B623"}," ",{"translate":"blue.tr.Objective","fallback":"Objective","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.everyone","fallback":"Everyone","color":"dark_green"}]
execute if score #.temp blue.misc matches 2 run return run playsound block.note_block.chime player @s ~ ~ ~ 0.6 0.9
execute if score #.temp blue.misc matches 1 run scoreboard players set #.tr.raiser_completed blue.config 2
execute if score #.temp blue.misc matches 1 run tellraw @s [{"translate":"Raiser","color":"#95B623"}," ",{"translate":"blue.tr.Objective","fallback":"Objective","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.owner","fallback":"Owner","color":"dark_gray"}]
execute if score #.temp blue.misc matches 1 run return run playsound block.note_block.chime player @s ~ ~ ~ 0.8 0.8
execute if score #.temp blue.misc matches 0 run scoreboard players set #.tr.raiser_completed blue.config 1
execute if score #.temp blue.misc matches 0 run tellraw @s [{"translate":"Raiser","color":"#95B623"}," ",{"translate":"blue.tr.Objective","fallback":"Objective","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.nobody","fallback":"Nobody","color":"dark_red"}]
execute if score #.temp blue.misc matches 0 run playsound block.note_block.chime player @s ~ ~ ~ 0.7 0.7