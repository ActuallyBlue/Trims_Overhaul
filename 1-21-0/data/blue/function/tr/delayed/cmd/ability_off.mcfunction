scoreboard players reset #.temp Trims_Menu.BLUE
particle wax_off ~ ~1 ~ 0.3 0.4 0.3 2 12
playsound block.amethyst_block.resonate player @a ~ ~ ~ 0.5 0.5
tellraw @s [{"translate":"blue.tr.trim_abilities","fallback":"Trim Abilities","color":"gray","clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 2"},"hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.menu.abilities_hover","fallback":"Toggle Trim Ability","color":"gray"}}},{"text":": ","color":"dark_gray"},{"translate":"options.off","color":"dark_red"}]
tag @s add blue.trim_disabled
function blue:tr/inv/unequip/attributes
execute if score @s blue.tr.current_trim matches 5 run scoreboard players reset #.raiser.level_old blue.misc
execute if score @s blue.tr.current_trim matches 6 run team leave @s[team=blue.tr.rib]
execute if score @s blue.tr.current_trim matches 8 run tag @s remove blue.tr.shaper.falling
execute if score @s blue.tr.current_trim matches 9 run kill b163102f-0-f-0-1
execute if score @s blue.tr.current_trim matches 9 run team leave @s[team=blue.tr.silence]
execute if score @s blue.tr.current_trim matches 10 run kill @e[tag=blue.tr.gamble.display,type=text_display]
execute if score @s blue.tr.current_trim matches 10 as @e[tag=blue.tr.gamble.item,type=item] run data merge entity @s {PickupDelay:10s,Age:400,Health:5s}
execute if score @s blue.tr.current_trim matches 10 run tag @e[tag=blue.tr.gamble.item,type=item] remove blue.tr.ground
execute if score @s blue.tr.current_trim matches 10 run tag @e[tag=blue.tr.gamble.item,type=item] remove blue.tr.gamble.item
execute if score @s blue.tr.current_trim matches 11 run scoreboard players set #.reversal_charge blue.misc 0
execute if score @s blue.tr.current_trim matches 11 if predicate {"condition":"entity_properties","entity":"this","predicate":{"effects":{"resistance":{"amplifier":78}}}} run effect clear @s resistance
execute if score @s blue.tr.current_trim matches 12 run scoreboard players reset #.tide.in_rain blue.misc
execute if score @s blue.tr.current_trim matches 12 run scoreboard players set #.tide.technique blue.misc 0
execute if score @s blue.tr.current_trim matches 14 run scoreboard players set #.ward.stonewall blue.misc 0
execute if score @s blue.tr.current_trim matches 18 run scoreboard players reset #.barrage_time blue.misc