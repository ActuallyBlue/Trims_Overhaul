playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={ward=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Ward","color":"#5C70AE"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={ward=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.ward] store result score #.temp blue.misc run clear @s ward_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.ward] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/ward
execute unless entity @s[tag=blue.tr.trim.ward] unless entity @s[tag=blue.tr.ward] run clear @s ward_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.ward] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/ward
execute if entity @s[tag=blue.tr.trim.ward] unless entity @s[tag=blue.tr.ward] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.ward] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.ward] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/ward
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Ward","color":"#5C70AE"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append