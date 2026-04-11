execute store result storage blue:trims temp.int int 5 run scoreboard players get @s blue.tr.combat
execute if score @s blue.tr.combat matches ..-1 store result storage blue:trims temp.int int -5 run scoreboard players get @s blue.tr.combat
data modify storage blue:trims temp.s1 set string storage blue:trims temp.int
data modify storage blue:trims temp.s2 set string storage blue:trims temp.s1 -2 -1
data modify storage blue:trims temp.s1 set string storage blue:trims temp.s1 0 -2
execute if score @s blue.tr.combat matches -19..19 run data modify storage blue:trims temp.s1 set value "0"
execute if score @s blue.tr.combat matches 0.. run return run title @s actionbar {"translate":"blue.tr.out_combat","fallback":"You've been out of combat for %s seconds","color":"gray","with":[{"storage":"blue:trims","nbt":"temp.s1","color":"white","interpret":true}]}
title @s actionbar {"translate":"blue.tr.in_combat","fallback":"You're in combat for %s.%s seconds","color":"gray","with":[{"storage":"blue:trims","nbt":"temp.s1","color":"red","interpret":true},{"storage":"blue:trims","nbt":"temp.s2","color":"dark_red","interpret":true}]}