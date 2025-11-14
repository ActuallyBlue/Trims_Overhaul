advancement grant @s only blue:tr/display/heart
scoreboard players set #.temp Trims_Menu.BLUE 52
function blue:tr/delayed/cmd/msg/tide
playsound item.trident.riptide_3 player @a ~ ~ ~ 2 0.5
particle falling_water ~ ~5 ~ 1 11 1 0 512 force
scoreboard players set #.tide.stacks blue.misc 6