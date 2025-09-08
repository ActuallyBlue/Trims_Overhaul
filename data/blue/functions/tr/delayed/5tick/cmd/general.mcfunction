schedule function blue:tr/delayed/5tick/cmd/loop 1t
scoreboard players set #.tr.trigger_loop blue.misc 400
scoreboard players operation #.temp TrimCMDs.BLUE = @s TrimCMDs.BLUE
execute if score #.temp TrimCMDs.BLUE matches 1 run function blue:tr/delayed/5tick/cmd/main_menu
execute if score #.temp TrimCMDs.BLUE matches 2 run function blue:tr/delayed/5tick/cmd/ability
execute if score #.temp TrimCMDs.BLUE matches 3 run function blue:tr/delayed/5tick/cmd/checkall
execute if score #.temp TrimCMDs.BLUE matches 4 run function blue:tr/delayed/5tick/cmd/checkowner
execute if score #.temp TrimCMDs.BLUE matches 5 run function blue:tr/delayed/5tick/cmd/links
execute if score #.temp TrimCMDs.BLUE matches 6 run function blue:tr/delayed/5tick/cmd/settings
execute if score #.temp TrimCMDs.BLUE matches 7 run function blue:tr/delayed/5tick/cmd/trim_settings
execute if score #.temp TrimCMDs.BLUE matches 8 at @s run function blue:shared/particles
execute if score #.temp TrimCMDs.BLUE matches 20..49 at @s run function blue:tr/delayed/5tick/cmd/transfer
execute if score #.temp TrimCMDs.BLUE matches 50..60 at @s run function blue:tr/delayed/5tick/cmd/info
execute if score #.temp TrimCMDs.BLUE matches 500..550 at @s run function blue:tr/inv/transfer/confirm
execute if score #.temp TrimCMDs.BLUE matches 999 at @s run function blue:tr/delayed/5tick/cmd/trust/compact
execute if score #.temp TrimCMDs.BLUE matches 1000..10000 at @s run function blue:tr/delayed/5tick/cmd/trust
execute if score #.temp TrimCMDs.BLUE matches 200600 at @s run function blue:tr/delayed/5tick/cmd/skip_tutorials
scoreboard players reset @s TrimCMDs.BLUE
scoreboard players enable @s TrimCMDs.BLUE