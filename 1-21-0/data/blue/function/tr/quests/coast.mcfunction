advancement revoke @s only blue:tr/quests/coast
execute store success score #.temp blue.misc if score #.tr.coast_completed blue.config matches 0
execute if score #.tr.coast_completed blue.config matches 2 if entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc 1
execute if score #.tr.coast_completed blue.config matches 1 run scoreboard players set #.temp blue.misc -1
execute unless score #.tr.objective_type blue.config matches 1 run scoreboard players set #.temp blue.misc -1
execute if entity @s[advancements={blue:tr/blacklist={coast=true}}] run scoreboard players set #.temp blue.misc -1
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_coast=false}}] run scoreboard players set #.temp blue.misc -1
execute if score #.tr.coast_completed blue.config matches 2 unless entity @s[tag=blue.tr.coast] run scoreboard players set #.temp blue.misc -1
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run scoreboard players set #.temp blue.misc -1
clear @s coast_armor_trim_smithing_template
execute if score #.temp blue.misc matches 1 run function blue:tr/completion/coast
execute unless score #.temp blue.misc matches -1 run return fail
tellraw @s {"translate":"blue.tr.coast_quest_warn","fallback":"- Only craft this when you know it'll complete the quest.","color":"gray"}
playsound block.note_block.bass player @s ~ ~ ~ 2 0.5
give @s tube_coral_block 4
give @s heart_of_the_sea 4
give @s conduit