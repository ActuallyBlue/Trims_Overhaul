execute store result score #.temp blue.misc run random value 0..15
execute if score #.temp blue.misc matches 13.. store result score #.temp blue.misc run random value 1..15
execute if score #.temp blue.misc matches 0 run data modify storage blue:trims display append value {"text":"☐","color":"gray"}
execute if score #.temp blue.misc matches 1..6 run data modify storage blue:trims display append value {"text":"⚁","color":"dark_green"}
execute if score #.temp blue.misc matches 7..12 run data modify storage blue:trims display append value {"text":"⚃","color":"dark_green"}
execute if score #.temp blue.misc matches 13..15 run data modify storage blue:trims display append value {"text":"⚅","color":"dark_green"}
execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.5 ~ run function blue:tr/effects/snout/gamble/item/good
data modify storage blue:trims display append value {"text":"  "}