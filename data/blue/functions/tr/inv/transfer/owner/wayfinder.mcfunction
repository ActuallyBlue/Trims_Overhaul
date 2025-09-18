playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={wayfinder=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Wayfinder","color":"#F1FFC8"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={wayfinder=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.wayfinder] store result score #.temp blue.misc run clear @s wayfinder_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.wayfinder] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/wayfinder
execute unless entity @s[tag=blue.tr.trim.wayfinder] unless entity @s[tag=blue.tr.wayfinder] run clear @s wayfinder_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.wayfinder] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/wayfinder
execute if entity @s[tag=blue.tr.trim.wayfinder] unless entity @s[tag=blue.tr.wayfinder] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.wayfinder] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.wayfinder] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/wayfinder
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Wayfinder","color":"#F1FFC8"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append