scoreboard players reset #.temp Trims_Menu.BLUE
particle wax_on ~ ~1 ~ 0.3 0.4 0.3 3 12
playsound block.amethyst_block.resonate player @a ~ ~ ~ 0.5 1.5
tellraw @s [{"translate":"blue.tr.trim_abilities","fallback":"Trim Abilities","color":"gray","clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 2"},"hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.menu.abilities_hover","fallback":"Toggle Trim Ability","color":"gray"}}},{"text":": ","color":"dark_gray"},{"translate":"options.on","color":"dark_green"}]
tag @s remove blue.trim_disabled
execute if score @s blue.tr.current_trim matches 4 run scoreboard players operation #.temp blue.misc = #.20 blue.misc
execute if score @s blue.tr.current_trim matches 4 run scoreboard players set #.20 blue.misc 5
execute if score @s blue.tr.current_trim matches 4 run function blue:tr/effects/host/main
execute if score @s blue.tr.current_trim matches 4 run scoreboard players operation #.20 blue.misc = #.temp blue.misc
execute if score @s blue.tr.current_trim matches 5 run function blue:tr/effects/raiser/proficiency
execute if score @s blue.tr.current_trim matches 14 run scoreboard players operation #.ward.health blue.misc = @s blue.health
execute if score @s blue.tr.current_trim matches 17 run function blue:tr/inv/equip/bolt
execute if score @s blue.tr.current_trim matches 18 run function blue:tr/inv/equip/flow