scoreboard players set #.eye.view_fear blue.misc 2
execute if score #.eye.watching blue.misc matches 0.. run return 0
execute unless score @s blue.tr.fear matches 2.. run title @a[tag=blue.tr.eye,limit=1] actionbar {"translate":"blue.tr.fear_amount","fallback":"%s has %s.%ss of Fear","color":"gray","with":[{"selector":"@s"},"0","0"]}
execute unless score @s blue.tr.fear matches 2.. run return 0
scoreboard players remove @s blue.tr.fear 2
execute store result storage blue:trims temp.int int 5 run scoreboard players operation #.temp blue.misc = @s blue.tr.fear
data modify storage blue:trims temp.s1 set string storage blue:trims temp.int
data modify storage blue:trims temp.s2 set string storage blue:trims temp.s1 -2 -1
data modify storage blue:trims temp.s1 set string storage blue:trims temp.s1 0 -2
execute if score #.temp blue.misc matches ..19 run data modify storage blue:trims temp.s1 set value 0
title @a[tag=blue.tr.eye,limit=1] actionbar {"translate":"blue.tr.fear_amount","fallback":"%s has %s.%ss of Fear","color":"gray","with":[{"selector":"@s"},{"storage":"blue:trims","nbt":"temp.s1","color":"green","interpret":true},{"storage":"blue:trims","nbt":"temp.s2","color":"dark_green","interpret":true}]}