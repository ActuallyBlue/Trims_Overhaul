playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={silence=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Silence","color":"#3842Cf"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={silence=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.silence] store result score #.temp blue.misc run clear @s silence_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.silence] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/silence
execute unless entity @s[tag=blue.tr.trim.silence] unless entity @s[tag=blue.tr.silence] run clear @s silence_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.silence] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/silence
execute if entity @s[tag=blue.tr.trim.silence] unless entity @s[tag=blue.tr.silence] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.silence] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.silence] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/silence
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Silence","color":"#3842Cf"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append