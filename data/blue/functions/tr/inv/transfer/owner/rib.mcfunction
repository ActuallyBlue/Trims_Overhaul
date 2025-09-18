playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={rib=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Rib","color":"#E6484B"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={rib=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.rib] store result score #.temp blue.misc run clear @s rib_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.rib] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/rib
execute unless entity @s[tag=blue.tr.trim.rib] unless entity @s[tag=blue.tr.rib] run clear @s rib_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.rib] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/rib
execute if entity @s[tag=blue.tr.trim.rib] unless entity @s[tag=blue.tr.rib] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.rib] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.rib] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/rib
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Rib","color":"#E6484B"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append