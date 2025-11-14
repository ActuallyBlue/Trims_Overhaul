scoreboard players remove #.tr.trigger_loop blue.misc 1
execute if score #.tr.trigger_loop blue.misc matches 1.. run schedule function blue:tr/delayed/cmd/loop 1t
execute as @a[scores={Trims_Menu.BLUE=1..}] run function blue:tr/delayed/cmd/trigger