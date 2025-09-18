advancement revoke @s only blue:tr/reservoir req
execute unless entity @s[tag=blue.tr.mats.heart] run return 0
playsound entity.generic.swim player @a ~ ~ ~ 0.5 2
scoreboard players add #.tide.stacks blue.misc 1
particle bubble_pop ~ ~1 ~ 0.3 0.6 0.3 0 24
function blue:tr/effects/tide/emp/display