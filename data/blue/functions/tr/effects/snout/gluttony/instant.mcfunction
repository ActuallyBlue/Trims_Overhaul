execute store result score #.temp blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_17
execute if score #.temp blue.misc matches 15.. store result score #.temp blue.misc run loot spawn 0 0 0 loot blue:tr/z/rng_17
execute if predicate blue:r/2c run scoreboard players set #.temp blue.misc 0
execute if score #.temp blue.misc matches 0 run data modify storage blue:trims display append value {"text":"☐","color":"gray"}
execute if score #.temp blue.misc matches 1..7 run data modify storage blue:trims display append value {"text":"⚁","color":"dark_green"}
execute if score #.temp blue.misc matches 8..14 run data modify storage blue:trims display append value {"text":"⚃","color":"dark_green"}
execute if score #.temp blue.misc matches 15.. run data modify storage blue:trims display append value {"text":"⚅","color":"dark_green"}
execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function blue:tr/effects/snout/gamble/item/good
data modify storage blue:trims display append value {"text":"  "}