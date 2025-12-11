playsound block.end_portal_frame.fill player @a ~ ~ ~ 1 0.5
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={dune=true}}] run tellraw @s [{"text":"- ","color":"dark_gray"},{"selector":"@a[tag=blue.tr.transfer_target]"}," ",{"translate":"blue.tr.transfer_blacklist","fallback":"has been blacklisted from getting","color":"gray"}," ",{"translate":"Dune","color":"#E7C547"}]
execute if entity @a[tag=blue.tr.transfer_target,advancements={blue:tr/blacklist={dune=true}}] run return 0
execute unless entity @s[tag=blue.tr.trim.dune] store result score #.temp blue.misc run clear @s dune_armor_trim_smithing_template 0
execute unless entity @s[tag=blue.tr.trim.dune] if score #.temp blue.misc matches 4.. as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/swap/dune
execute unless entity @s[tag=blue.tr.trim.dune] unless entity @s[tag=blue.tr.dune] run clear @s dune_armor_trim_smithing_template
execute if entity @s[tag=blue.tr.trim.dune] in overworld as @a[tag=blue.tr.transfer_target,limit=1] run function blue:tr/inv/transfer/target/armor/dune
execute if entity @s[tag=blue.tr.trim.dune] unless entity @s[tag=blue.tr.dune] run function blue:tr/inv/transfer/owner/remove_trim
execute if entity @s[tag=blue.tr.dune] run function blue:tr/inv/transfer/owner/fail
execute if entity @s[tag=blue.tr.dune] run return 0
execute as @a[tag=blue.tr.transfer_target,limit=1] facing entity @s feet run function blue:tr/inv/transfer/raycast/dune
data modify storage blue:trims logs.append.target set from storage blue:shared player_name
function blue:shared/get_name
data modify storage blue:trims logs.append.trim set value {"translate":"Dune","color":"#E7C547"}
function blue:tr/inv/transfer/log