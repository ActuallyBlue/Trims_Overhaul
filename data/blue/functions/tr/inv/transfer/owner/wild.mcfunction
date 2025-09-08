playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={wild=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Wild","color":"#00D529"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={wild=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.wild] store result score #.temp blue.misc run clear @s wild_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.wild] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/wild
execute unless entity @s[tag=blue.tr.trim.wild] unless entity @s[tag=blue.tr.wild] run clear @s wild_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.wild] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/wild
execute if entity @s[tag=blue.tr.trim.wild] unless entity @s[tag=blue.tr.wild] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.wild] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.wild] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/wild
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Wild","color":"#00D529"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append