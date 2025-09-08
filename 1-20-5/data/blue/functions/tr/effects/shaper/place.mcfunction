execute on origin if entity @s[tag=blue.tr.shaper] run scoreboard players set #.temp blue.misc -823
execute unless score #.temp blue.misc matches -823 run return run tag @s add blue.tr.shaper_checked
scoreboard players reset #.temp blue.misc
particle item{item:tnt} ~ ~0.5 ~ 0.3 0.3 0.3 0.01 4
execute if score #.difficulty blue.misc matches ..1 run summon tnt ~ ~0.2 ~ {fuse:30s}
execute if score #.difficulty blue.misc matches 2 run summon tnt ~ ~0.2 ~ {fuse:40s}
execute if score #.difficulty blue.misc matches 3 run summon tnt ~ ~0.2 ~ {fuse:50s}
kill