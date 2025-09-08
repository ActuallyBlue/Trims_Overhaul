tag @s[predicate=blue:r/2c] add blue.tr.gamble.none
execute if entity @s[tag=blue.tr.gamble.none] on passengers run data modify entity @s text set value '{"text":"☐","color":"gray"}'
execute if entity @s[tag=blue.tr.gamble.none] run playsound block.fire.extinguish player @a ~ ~ ~ 1 1.5
execute if entity @s[tag=blue.tr.gamble.none] run return 0
execute store result score #.gamble blue.misc run data get entity @s Item.Count
execute unless entity @s[tag=blue.tr.gold_nugget] run scoreboard players operation #.gamble blue.misc *= #9 blue.misc
execute if entity @s[tag=blue.tr.gold_block] run scoreboard players operation #.gamble blue.misc *= #9 blue.misc
scoreboard players operation #.temp blue.misc = #.gamble blue.misc
scoreboard players operation #.gamble blue.misc *= #.snout.gamble_multiplier blue.config
execute store result score #.mult blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_50
scoreboard players operation #.gamble blue.misc *= #.mult blue.misc
scoreboard players add #.gamble blue.misc 500
execute store success score @s blue.tr.combat if score #.gamble blue.misc matches 19000..
execute if score #.temp blue.misc matches 0..575 store result score @s blue.tr.died run loot spawn 0 0 0 loot blue:tr/z/rng_15
execute if score #.temp blue.misc matches 0..575 if score @s blue.tr.died matches 13.. store result score @s blue.tr.died run loot spawn 0 0 0 loot blue:tr/z/rng_15
execute if score #.temp blue.misc matches 576.. store result score @s blue.tr.died run loot spawn 0 0 0 loot blue:tr/z/rng_15
execute if score @s blue.tr.combat matches 0 run playsound block.dispenser.launch player @a ~ ~ ~ 1.25 1
execute if score @s blue.tr.combat matches 0 if score @s blue.tr.died matches 1..6 on passengers run data modify entity @s text set value '{"text":"⚀","color":"dark_red"}'
execute if score @s blue.tr.combat matches 0 if score @s blue.tr.died matches 7..12 on passengers run data modify entity @s text set value '{"text":"⚂","color":"dark_red"}'
execute if score @s blue.tr.combat matches 0 if score @s blue.tr.died matches 13.. on passengers run data modify entity @s text set value '{"text":"⚄","color":"dark_red"}'
execute if score @s blue.tr.combat matches 1 run playsound block.dispenser.launch player @a ~ ~ ~ 1.5 2
execute if score @s blue.tr.combat matches 1 if score @s blue.tr.died matches 1..6 on passengers run data modify entity @s text set value '{"text":"⚁","color":"dark_green"}'
execute if score @s blue.tr.combat matches 1 if score @s blue.tr.died matches 7..12 on passengers run data modify entity @s text set value '{"text":"⚃","color":"dark_green"}'
execute if score @s blue.tr.combat matches 1 if score @s blue.tr.died matches 13.. on passengers run data modify entity @s text set value '{"text":"⚅","color":"dark_green"}'