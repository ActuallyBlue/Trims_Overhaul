playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={raiser=true}}] run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"Raiser","color":"#95B623"}]
execute if entity @a[tag=blue.tr.transfer_failed,advancements={blue:tr/blacklist={raiser=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.raiser] store result score #.temp blue.misc run clear @s raiser_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.raiser] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/raiser
execute unless entity @s[tag=blue.tr.trim.raiser] unless entity @s[tag=blue.tr.raiser] run clear @s raiser_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.raiser] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/raiser
execute if entity @s[tag=blue.tr.trim.raiser] unless entity @s[tag=blue.tr.raiser] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.raiser] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.raiser] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/raiser
data modify storage blue:data trims.telemetry.append.type set value {"translate":"Raiser","color":"#95B623"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append