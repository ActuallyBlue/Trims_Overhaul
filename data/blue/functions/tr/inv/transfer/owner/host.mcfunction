playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={host=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Host","color":"#A34646"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={host=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.host] store result score #.temp blue.misc run clear @s host_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.host] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/host
execute unless entity @s[tag=blue.tr.trim.host] unless entity @s[tag=blue.tr.host] run clear @s host_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.host] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/host
execute if entity @s[tag=blue.tr.trim.host] unless entity @s[tag=blue.tr.host] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.host] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.host] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/host
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Host","color":"#A34646"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append