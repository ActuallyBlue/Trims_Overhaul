title @s actionbar {"translate":"blue.tr.gamble.strong_effect","fallback":"Strong Effect","color":"gray"}
playsound block.enchantment_table.use player @a ~ ~ ~ 1.5 1.1
execute at @s run particle effect ~ ~1 ~ 0.3 0.4 0.3 0 16
execute if score #.temp blue.misc matches 3 run effect give @s resistance 10 2
execute if score #.temp blue.misc matches 4 run effect give @s absorption 10 2
execute if score #.temp blue.misc matches 5 run effect give @s strength 10 2
execute if score #.temp blue.misc matches 6 run effect give @s speed 10 2
effect give @s fire_resistance 30 0 true