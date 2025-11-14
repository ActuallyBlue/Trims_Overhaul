particle wax_on ~ ~0.25 ~
execute if entity @s[tag=blue.tr.gold_nugget] run return 0
execute if entity @s[tag=blue.tr.gold_ingot] positioned ~-0.5 ~-0.75 ~-0.5 as @e[dx=0,tag=!blue.tr.snout,type=!#blue:shared/no_effects] positioned ~0.25 ~0.25 ~0.25 at @s[dx=0] run function blue:tr/effects/snout/gamble/throw/ingot
execute if entity @s[tag=blue.tr.gold_block] positioned ~-0.5 ~-0.75 ~-0.5 as @e[dx=0,tag=!blue.tr.snout,type=!#blue:shared/no_effects] positioned ~0.25 ~0.25 ~0.25 at @s[dx=0] run function blue:tr/effects/snout/gamble/throw/block
execute unless score #.temp blue.misc matches -6624 run return 0
particle wax_on ~ ~0.25 ~ 0.1 0.1 0.1 4.5 16
scoreboard players reset #.temp blue.misc
kill