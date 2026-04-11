execute if score #.20 blue.misc matches 16 run damage @s 2.5 blue:tr/trap by @a[tag=blue.tr.wild,limit=1]
execute unless block ~ ~-0.3 ~ grass_block run effect clear @s mining_fatigue
execute unless block ~ ~-0.3 ~ grass_block run effect clear @s slowness
tp ~ ~ ~