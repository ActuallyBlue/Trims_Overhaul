schedule function blue:tr/effects/shaper/emp/clear 1t
particle smoke ~ ~1 ~ 0.3 0.4 0.3 0 32
execute unless entity @s[predicate=!blue:shared/in_old_growth,tag=!blue.tr.dragon_egg] run return run effect give @s resistance 1 9 true
execute if score #.difficulty blue.misc matches ..1 run return run effect give @s resistance 1 1 true
execute if score #.difficulty blue.misc matches 2 run return run effect give @s resistance 1 2 true
execute if score #.difficulty blue.misc matches 3.. run effect give @s resistance 1 3 true