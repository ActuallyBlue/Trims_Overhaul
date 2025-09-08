scoreboard players reset #.raiser.piercer blue.misc
execute if score #.raiser.charge blue.misc matches 101.. run scoreboard players set #.raiser.charge blue.misc 100
scoreboard players remove #.raiser.charge blue.misc 48
playsound item.brush.brushing.sand.complete block @a ^ ^ ^1 0.9 0.5
function blue:tr/effects/raiser/piercer/cast
scoreboard players add #.raiser.charge blue.misc 48