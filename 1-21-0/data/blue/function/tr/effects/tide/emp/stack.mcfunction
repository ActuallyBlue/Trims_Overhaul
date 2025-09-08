playsound entity.player.splash player @a ~ ~ ~ 0.5 2
scoreboard players add #.tide.stacks blue.misc 1
scoreboard players reset #.tide.timer blue.misc
particle bubble_pop ~ ~1 ~ 0.3 0.6 0.3 0 24
function blue:tr/effects/tide/emp/display