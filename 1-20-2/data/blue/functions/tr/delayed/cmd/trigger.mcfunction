execute unless score #.tr.ability_shortcuts blue.config matches 1..2 run schedule function blue:tr/delayed/cmd/loop 1t
scoreboard players set #.tr.trigger_loop blue.misc 400
scoreboard players operation #.temp Trims_Menu.BLUE = @s Trims_Menu.BLUE
data modify storage blue:trims temp.menu set value {"strikethrough":"false","color":"gray"}
execute if entity @s[tag=blue.trim_disabled] run data modify storage blue:trims temp.menu.color set value "dark_red"
execute if score #.tr.manual_transferring blue.config matches 0 run data modify storage blue:trims temp.menu.strikethrough set value "true"
execute if score #.temp Trims_Menu.BLUE matches 1 run function blue:tr/delayed/cmd/main_menu with storage blue:trims temp.menu
execute if score #.temp Trims_Menu.BLUE matches 2 run function blue:tr/delayed/cmd/ability
execute if score #.temp Trims_Menu.BLUE matches 3 run function blue:tr/delayed/cmd/all_owners
execute if score #.temp Trims_Menu.BLUE matches 4 run function blue:tr/delayed/cmd/check_owned
execute if score #.temp Trims_Menu.BLUE matches 5 run function blue:tr/delayed/cmd/links
execute if score #.temp Trims_Menu.BLUE matches 6 run function blue:tr/delayed/cmd/settings
execute if score #.temp Trims_Menu.BLUE matches 7 run function blue:tr/delayed/cmd/trim_settings
execute if score #.temp Trims_Menu.BLUE matches 8 at @s run function blue:shared/particles
execute if score #.temp Trims_Menu.BLUE matches 20..49 at @s run function blue:tr/delayed/cmd/transfer
execute if score #.temp Trims_Menu.BLUE matches 50..60 at @s run function blue:tr/delayed/cmd/info
execute if score #.temp Trims_Menu.BLUE matches 61 at @s run function blue:tr/delayed/cmd/objectives
execute if score #.temp Trims_Menu.BLUE matches 100 at @s run function blue:tr/delayed/cmd/shortcut
execute if score #.temp Trims_Menu.BLUE matches 500..550 at @s run function blue:tr/inv/transfer/confirm
execute if score #.temp Trims_Menu.BLUE matches 999 at @s run function blue:tr/delayed/cmd/trust/compact
execute if score #.temp Trims_Menu.BLUE matches 1000..10000 at @s run function blue:tr/delayed/cmd/trust
execute if score #.temp Trims_Menu.BLUE matches 200600 at @s run function blue:tr/delayed/cmd/toggle_tutorials
scoreboard players reset @s Trims_Menu.BLUE
scoreboard players enable @s Trims_Menu.BLUE