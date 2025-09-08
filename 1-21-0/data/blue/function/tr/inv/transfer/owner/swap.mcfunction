$clear @s $(trim)_armor_trim_smithing_template
$give @a[tag=blue.tr.transfer_target,limit=1] $(trim)_armor_trim_smithing_template[custom_data={blue:trim},enchantment_glint_override=true,bundle_contents=[{id:bow}]] 4
$execute as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap {trim:$(trim)}
$tag @s remove blue.tr.$(trim)