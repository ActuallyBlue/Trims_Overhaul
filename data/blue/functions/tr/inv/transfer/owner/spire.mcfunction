playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={spire=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Spire","color":"#BE20C7"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={spire=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.spire] store result score #.temp blue.misc run clear @s spire_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.spire] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/spire
execute unless entity @s[tag=blue.tr.trim.spire] unless entity @s[tag=blue.tr.spire] run clear @s spire_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.spire] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/spire
execute if entity @s[tag=blue.tr.trim.spire] unless entity @s[tag=blue.tr.spire] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.spire] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.spire] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/spire
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append