execute at @s[advancements={blue:tr/tags={unlocked_tide=false}}] run function blue:tr/inv/templates/unlock/tide
execute if entity @s[tag=blue.tr.tide] run return 0
execute if score #.tr.objective_type blue.config matches 3 unless score #.tr.limit_owned_trims blue.config matches 1.. if score #.tr.tide_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={tide=false}}] run function blue:tr/completion/tide
execute if score #.tr.objective_type blue.config matches 3 if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=false}}] if score #.tr.tide_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={tide=false}}] run function blue:tr/completion/tide
execute if score #.tr.template_clearing blue.config matches 0 run return 0
execute store result score #.clear_temp blue.misc run clear @s tide_armor_trim_smithing_template{blue:{trim:1b}}
clear @s tide_armor_trim_smithing_template
scoreboard players operation #.tide_stored blue.misc += #.clear_temp blue.misc
scoreboard players operation #.template_loot blue.misc = #.tide_stored blue.misc
execute at @a[tag=blue.tr.tide,limit=1] run loot spawn ~ ~0.5 ~ loot blue:tr/tide
scoreboard players set #.template_loot blue.misc 1
execute if entity @a[tag=blue.tr.tide,limit=1] run scoreboard players reset #.tide_stored blue.misc
scoreboard players reset #.clear_temp blue.misc