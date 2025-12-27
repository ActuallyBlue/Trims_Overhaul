$execute at @s[advancements={blue:tr/tags={unlocked_$(trim)=false}}] if items entity @s container.* #blue:tr/templates[!custom_data~{blue:trim}] run function blue:tr/inv/templates/unlock/$(trim)
$execute if entity @s[tag=blue.tr.$(trim)] run return fail
$execute if score #.tr.$(trim)_completed blue.config matches 0 if function blue:tr/inv/templates/unlock/is_limit if entity @s[advancements={blue:tr/blacklist={$(trim)=false}}] run function blue:tr/completion/$(trim)
execute if score #.tr.template_clearing blue.config matches 0 run return fail
$execute store result score #.clear_temp blue.misc run clear @s $(trim)_armor_trim_smithing_template[custom_data={blue:trim}]
$clear @s $(trim)_armor_trim_smithing_template
execute if score #.clear_temp blue.misc matches 0 run return fail
$scoreboard players operation #.$(trim)_stored blue.misc += #.clear_temp blue.misc
$execute if score #.$(trim)_stored blue.misc matches 1 run give @a[tag=blue.tr.$(trim),limit=1] $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]]
$execute if score #.$(trim)_stored blue.misc matches 2 run give @a[tag=blue.tr.$(trim),limit=1] $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 2
$execute if score #.$(trim)_stored blue.misc matches 3 run give @a[tag=blue.tr.$(trim),limit=1] $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 3
$execute if score #.$(trim)_stored blue.misc matches 4.. run give @a[tag=blue.tr.$(trim),limit=1] $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 4
$execute if entity @a[tag=blue.tr.$(trim),limit=1] run scoreboard players reset #.$(trim)_stored blue.misc
scoreboard players reset #.clear_temp blue.misc