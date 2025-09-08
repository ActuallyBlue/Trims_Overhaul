playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={eye=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Eye","color":"#1F8A46"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={eye=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.eye] store result score #.temp blue.misc run clear @s eye_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.eye] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/eye
execute unless entity @s[tag=blue.tr.trim.eye] unless entity @s[tag=blue.tr.eye] run clear @s eye_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.eye] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/eye
execute if entity @s[tag=blue.tr.trim.eye] unless entity @s[tag=blue.tr.eye] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.eye] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.eye] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/eye
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Eye","color":"#1F8A46"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append