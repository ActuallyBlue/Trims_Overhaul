playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={shaper=true}}] run tellraw @s [{"text":"- ","color":"dark_gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting","color":"gray"}," ",{"translate":"Shaper","color":"#8F8F8F"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={shaper=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.shaper] store result score #.temp blue.misc run clear @s shaper_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.shaper] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/shaper
execute unless entity @s[tag=blue.tr.trim.shaper] unless entity @s[tag=blue.tr.shaper] run clear @s shaper_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.shaper] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/shaper
execute if entity @s[tag=blue.tr.trim.shaper] unless entity @s[tag=blue.tr.shaper] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.shaper] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.shaper] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/shaper
data modify storage blue:trims logs.append.target set from storage blue:shared player_name
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Shaper","color":"#8F8F8F"}
function blue:tr/inv/transfer/log