playsound block.grass.break player @a ~ ~ ~ 1.6 0.5
execute positioned ~ ~-0.5 ~ run function blue:tr/effects/wild/cast
particle item{item:moss_block} ~ ~0.7 ~ 0.5 0.4 0.5 0 18
particle block{block_state:"minecraft:tnt"} ~ ~0.5 ~ 0.15 0.15 0.15 0 24
loot spawn ~ ~ ~ loot blue:tr/z/tnt
kill