playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
$execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={$(trim)=true}},limit=1] run return run tellraw @s [{"text":"- ","color":"gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting"}," ",{"translate":"$(trim)"}]
$execute unless entity @s[tag=blue.tr.trim.$(trim)] store result score #.temp blue.misc run clear @s $(trim)_armor_trim_smithing_template 0
$execute unless entity @s[tag=blue.tr.trim.$(trim)] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap with storage blue:data trims.translations[{trim:$(trim)}]
$execute unless entity @s[tag=blue.tr.trim.$(trim)] unless entity @s[tag=blue.tr.$(trim)] run clear @s $(trim)_armor_trim_smithing_template
$execute if entity @s[tag=blue.tr.trim.$(trim)] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor with storage blue:data trims.translations[{trim:$(trim)}]
$execute if entity @s[tag=blue.tr.trim.$(trim)] unless entity @s[tag=blue.tr.$(trim)] run function blue:tr/inv/transfer/owner/remove_trim
$execute if entity @s[tag=blue.tr.$(trim)] run return run function blue:tr/inv/transfer/owner/fail
$execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast {trim:$(trim)}
$data modify storage blue:data trims.telemetry.append.type set value {"translate":"$(trim)"}
data modify storage blue:data trims.telemetry.transfer append from storage blue:data trims.telemetry.append