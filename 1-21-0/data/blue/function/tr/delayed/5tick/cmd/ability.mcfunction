execute store success score #.temp blue.misc if entity @s[tag=blue.trim_disabled]
execute if score #.temp blue.misc matches 1 run tag @s remove blue.trim_disabled
execute if score #.temp blue.misc matches 1 run playsound entity.arrow.hit_player player @s 0 -128 0 0 1 0.5
execute if score #.temp blue.misc matches 1 run return run tellraw @s [{"translate":"blue.tr.trim_abilities","fallback":"Trim Abilities","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}]
execute if score #.temp blue.misc matches 0 run tellraw @s [{"translate":"blue.tr.trim_abilities","fallback":"Trim Abilities","color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"options.off","color":"dark_red"}]
execute if score #.temp blue.misc matches 0 run playsound entity.arrow.hit_player player @s 0 -128 0 0 0.5 0.55
execute if score #.temp blue.misc matches 0 run tag @s add blue.trim_disabled