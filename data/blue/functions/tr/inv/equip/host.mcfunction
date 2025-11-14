tag @s add blue.tr.trim.host
execute unless entity @s[tag=blue.tr.host] run return 0
scoreboard players set @s blue.tr.current_trim 4
scoreboard players operation #.temp blue.misc = #.20 blue.misc
scoreboard players set #.20 blue.misc 5
function blue:tr/effects/host/main
scoreboard players operation #.20 blue.misc = #.temp blue.misc