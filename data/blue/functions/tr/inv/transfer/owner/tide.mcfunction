playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={tide=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Tide","color":"#199ADD"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={tide=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.tide] store result score #.temp blue.misc run clear @s tide_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.tide] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/tide
execute unless entity @s[tag=blue.tr.trim.tide] unless entity @s[tag=blue.tr.tide] run clear @s tide_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.tide] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/tide
execute if entity @s[tag=blue.tr.trim.tide] unless entity @s[tag=blue.tr.tide] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.tide] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.tide] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/tide
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Tide","color":"#199ADD"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append