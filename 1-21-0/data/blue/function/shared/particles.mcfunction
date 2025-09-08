scoreboard players add @s blue.particles 1
scoreboard players set @s[scores={blue.particles=3..}] blue.particles 0
tellraw @s[scores={blue.particles=0}] [{"translate":"blue.tr.Particles","fallback":"Particles","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.Low","fallback":"Low","color":"dark_red"}]
playsound block.note_block.chime player @s[scores={blue.particles=0}] ~ ~ ~ 0.8 0.5
tellraw @s[scores={blue.particles=1}] [{"translate":"blue.tr.Particles","fallback":"Particles","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.Medium","fallback":"Medium","color":"dark_green"}]
playsound block.note_block.chime player @s[scores={blue.particles=1}] ~ ~ ~ 0.75 0.75
tellraw @s[scores={blue.particles=2}] [{"translate":"blue.tr.Particles","fallback":"Particles","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.High","fallback":"High","color":"blue"}]
playsound block.note_block.chime player @s[scores={blue.particles=2}] ~ ~ ~ 0.7 1