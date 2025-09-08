execute if block ~ ~ ~ air if predicate blue:r/10c run setblock ~ ~ ~ short_grass
execute if block ~ ~-0.5 ~ dirt run setblock ~ ~-0.5 ~ grass_block
effect give @s[scores={blue.food=..4}] saturation 1 0 true
effect give @s haste 3 0 true