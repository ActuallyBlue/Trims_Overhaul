tp @s ~ ~ ~ ~ ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~8 ~
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~12 ~
execute if score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~8 ~
execute if score #.temp blue.misc matches 0 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~18 ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~-8 ~
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-12 ~
execute if score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-8 ~
execute if score #.temp blue.misc matches 0 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-18 ~
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~ ~8
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~12
execute if score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~8
execute if score #.temp blue.misc matches 0 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~18
execute if predicate blue:r/20c at @s run tp @s ~ ~ ~ ~ ~-8
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~-12
execute if score #.temp blue.misc matches 1 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~-8
execute if score #.temp blue.misc matches 0 if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~ ~-18
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~10 ~-10
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-10 ~10
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~-10 ~-10
execute if predicate blue:r/10c at @s run tp @s ~ ~ ~ ~10 ~10