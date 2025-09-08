execute as @a[scores={blue.tr.current_trim=13..18},tag=!blue.trim_disabled,gamemode=!spectator,limit=6] at @s run function blue:tr/effects/third
execute as @a[scores={blue.tr.current_trim=7..12},tag=!blue.trim_disabled,gamemode=!spectator,limit=6] at @s run function blue:tr/effects/second
execute as @a[scores={blue.tr.current_trim=1..6},tag=!blue.trim_disabled,gamemode=!spectator,limit=6] at @s run function blue:tr/effects/first
execute as @e[type=item,tag=!blue.tr.checked] run function blue:tr/item/check
execute if score #.wait_for_respawn blue.misc matches 1.. as @e[type=player,tag=blue.tr.respawn,limit=1] run function blue:tr/inv/died/respawn
execute if score #.20 blue.misc matches 20.. run scoreboard players reset #.20 blue.misc
execute if score #.60 blue.misc matches 60.. run function blue:tr/delayed/3s
scoreboard players add #.20 blue.misc 1
scoreboard players add #.60 blue.misc 1
schedule function blue:tr/tick 1t