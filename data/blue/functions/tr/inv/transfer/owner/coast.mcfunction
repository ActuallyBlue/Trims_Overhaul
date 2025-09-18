playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={coast=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Coast","color":"#C1C888"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={coast=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.coast] store result score #.temp blue.misc run clear @s coast_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.coast] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/coast
execute unless entity @s[tag=blue.tr.trim.coast] unless entity @s[tag=blue.tr.coast] run clear @s coast_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.coast] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/coast
execute if entity @s[tag=blue.tr.trim.coast] unless entity @s[tag=blue.tr.coast] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.coast] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.coast] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/coast
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Coast","color":"#C1C888"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append