playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={sentry=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Sentry","color":"#4B885B"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={sentry=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.sentry] store result score #.temp blue.misc run clear @s sentry_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.sentry] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/sentry
execute unless entity @s[tag=blue.tr.trim.sentry] unless entity @s[tag=blue.tr.sentry] run clear @s sentry_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.sentry] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/sentry
execute if entity @s[tag=blue.tr.trim.sentry] unless entity @s[tag=blue.tr.sentry] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.sentry] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.sentry] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/sentry
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Sentry","color":"#4B885B"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append