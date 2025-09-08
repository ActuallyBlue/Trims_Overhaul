execute on origin if entity @s[tag=blue.tr.shaper] run scoreboard players set #.temp blue.misc -823
execute unless score #.temp blue.misc matches -823 run tag @s add blue.tr.shaper_checked
execute unless score #.temp blue.misc matches -823 run return 0
scoreboard players reset #.temp blue.misc
particle item tnt ~ ~0.5 ~ 0.3 0.3 0.3 0.01 4
execute if score #.difficulty blue.misc matches ..1 run summon tnt ~ ~0.2 ~ {Fuse:30s}
execute if score #.difficulty blue.misc matches 2 run summon tnt ~ ~0.2 ~ {Fuse:40s}
execute if score #.difficulty blue.misc matches 3 run summon tnt ~ ~0.2 ~ {Fuse:50s}
kill