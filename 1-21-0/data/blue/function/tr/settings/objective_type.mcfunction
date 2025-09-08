execute unless score #.temp blue.misc matches -123 run scoreboard players operation #.temp blue.misc = #.tr.objective_type blue.config
execute if score #.temp blue.misc matches 3 run scoreboard players set #.tr.objective_type blue.config 0
execute if score #.temp blue.misc matches 3 run playsound block.note_block.chime player @s ~ ~ ~ 1 0.6
execute if score #.temp blue.misc matches 2 run scoreboard players set #.tr.objective_type blue.config 3
execute if score #.temp blue.misc matches 2 run playsound block.note_block.chime player @s ~ ~ ~ 0.9 0.7
execute if score #.temp blue.misc matches 1 run scoreboard players set #.tr.objective_type blue.config 2
execute if score #.temp blue.misc matches 1 run playsound block.note_block.chime player @s ~ ~ ~ 0.8 0.8
execute if score #.temp blue.misc matches 0 run scoreboard players set #.tr.objective_type blue.config 1
execute if score #.temp blue.misc matches 0 run playsound block.note_block.chime player @s ~ ~ ~ 0.7 0.9
execute if score #.tr.objective_type blue.config matches 0 run tellraw @s [{"translate":"blue.tr.objective_type","fallback":"Objective Type","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"clickEvent":{"action":"run_command","value":"/function blue:tr/settings/objective_type"},"click_event":{"action":"run_command","command":"/function blue:tr/settings/objective_type"},"color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.impossible","fallback":"Impossible","color":"dark_gray"}]
execute if score #.tr.objective_type blue.config matches 3 run tellraw @s [{"translate":"blue.tr.objective_type","fallback":"Objective Type","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"clickEvent":{"action":"run_command","value":"/function blue:tr/settings/objective_type"},"click_event":{"action":"run_command","command":"/function blue:tr/settings/objective_type"},"color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.unlock","fallback":"Unlock","color":"white"}]
execute if score #.tr.objective_type blue.config matches 2 run tellraw @s [{"translate":"blue.tr.objective_type","fallback":"Objective Type","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"clickEvent":{"action":"run_command","value":"/function blue:tr/settings/objective_type"},"click_event":{"action":"run_command","command":"/function blue:tr/settings/objective_type"},"color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.tasks","fallback":"Tasks","color":"dark_green"}]
execute if score #.tr.objective_type blue.config matches 1 run tellraw @s [{"translate":"blue.tr.objective_type","fallback":"Objective Type","hoverEvent":{"action":"show_text","contents":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.objective_type_hover","fallback":"How players complete objectives (Quests, Tasks, Unlock, Impossible)","color":"gray"}},"clickEvent":{"action":"run_command","value":"/function blue:tr/settings/objective_type"},"click_event":{"action":"run_command","command":"/function blue:tr/settings/objective_type"},"color":"gray"},{"text":": ","color":"dark_gray"},{"translate":"blue.tr.quests","fallback":"Quests","color":"dark_green"}]
execute unless score #.tr.objective_type blue.config matches 2 run return fail
scoreboard objectives add blue.tr.swim custom:swim_one_cm
scoreboard objectives add blue.tr.blocks_swam dummy
scoreboard objectives add blue.tr.walk custom:walk_one_cm
scoreboard objectives add blue.tr.blocks_walked dummy
scoreboard objectives add blue.tr.desert_time dummy
scoreboard objectives add blue.tr.dragons_killed dummy
scoreboard objectives add blue.tr.animals_tamed dummy
scoreboard objectives add blue.tr.animals_bred dummy
scoreboard objectives add blue.tr.ominous_vault dummy
scoreboard objectives add blue.tr.plain_vault dummy
scoreboard objectives add blue.tr.piglin_trades dummy
scoreboard objectives add blue.tr.pre_barter dummy
scoreboard objectives add blue.tr.mobs_killed dummy
scoreboard objectives add blue.tr.silverfish_killed dummy
scoreboard objectives add blue.tr.explosions_survived dummy
scoreboard objectives add blue.tr.villagers_cured dummy
scoreboard objectives add blue.tr.damage_blocked custom:damage_blocked_by_shield
scoreboard objectives add blue.tr.items_fished dummy
scoreboard objectives add blue.tr.items_enchanted dummy
scoreboard objectives add blue.tr.raids_won dummy
scoreboard objectives add blue.tr.lava_seconds dummy
scoreboard objectives add blue.tr.RTDtime dummy
scoreboard objectives add blue.tr.RTDval dummy
scoreboard objectives add RTD.BLUE trigger
scoreboard players set #100 blue.misc 100
scoreboard players reset * blue.tr.swim
scoreboard players reset * blue.tr.walk