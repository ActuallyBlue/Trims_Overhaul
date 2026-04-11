$execute at @s[advancements={blue:tr/tags={unlocked_$(trim)=false}}] if items entity @s container.* #blue:tr/templates[!custom_data~{blue:{trim:1b}}] run function blue:tr/inv/templates/unlock/$(trim)
$execute if entity @s[tag=blue.tr.$(trim)] run return fail
$execute if score #.tr.$(trim)_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={$(trim)=false}}] run function blue:tr/completion/$(trim)
execute if score #.tr.template_clearing blue.config matches 0 run return fail
$execute store result score #.clear_temp blue.misc run clear @s $(trim)_armor_trim_smithing_template[custom_data~{blue:{trim:1b}}]
$clear @s $(trim)_armor_trim_smithing_template
execute if score #.clear_temp blue.misc matches 0 run return fail
$scoreboard players operation #.$(trim)_stored blue.misc += #.clear_temp blue.misc
$scoreboard players operation #.template_loot blue.misc = #.$(trim)_stored blue.misc
$execute at @a[tag=blue.tr.$(trim),limit=1] run loot spawn ~ ~0.5 ~ loot blue:tr/$(trim)
scoreboard players set #.template_loot blue.misc 1
$execute if entity @a[tag=blue.tr.$(trim),limit=1] run scoreboard players reset #.$(trim)_stored blue.misc
scoreboard players reset #.clear_temp blue.misc