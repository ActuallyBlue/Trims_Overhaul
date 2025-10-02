execute if score #.tr.objective_type blue.config matches 3 unless score #.tr.limit_owned_trims blue.config matches 1 if score #.tr.sentry_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={sentry=false}}] run function blue:tr/completion/sentry
execute if score #.tr.objective_type blue.config matches 3 if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=false}}] if score #.tr.sentry_completed blue.config matches 0 if entity @s[advancements={blue:tr/blacklist={sentry=false}}] run function blue:tr/completion/sentry
execute at @s[advancements={blue:tr/tags={unlocked_sentry=false}}] run function blue:tr/inv/templates/unlock/sentry
execute if score #.tr.template_clearing blue.config matches 0 run return 0
execute store result score #.clear_temp blue.misc run clear @s sentry_armor_trim_smithing_template{blue:trim}
clear @s sentry_armor_trim_smithing_template
scoreboard players operation #.sentry_stored blue.misc += #.clear_temp blue.misc
execute if score #.sentry_stored blue.misc matches 1 run give @a[tag=blue.tr.sentry,limit=1] sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1}
execute if score #.sentry_stored blue.misc matches 2 run give @a[tag=blue.tr.sentry,limit=1] sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 2
execute if score #.sentry_stored blue.misc matches 3 run give @a[tag=blue.tr.sentry,limit=1] sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 3
execute if score #.sentry_stored blue.misc matches 4.. run give @a[tag=blue.tr.sentry,limit=1] sentry_armor_trim_smithing_template{blue:trim,Enchantments:[{id:binding_curse}],HideFlags:1} 4
execute if entity @a[tag=blue.tr.sentry,limit=1] run scoreboard players reset #.sentry_stored blue.misc
scoreboard players reset #.clear_temp blue.misc