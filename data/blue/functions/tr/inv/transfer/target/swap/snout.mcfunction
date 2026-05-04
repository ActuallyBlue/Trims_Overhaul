tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.snout
advancement grant @s only blue:tr/trust snout
tag @s add blue.tr.snout
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/snout
data modify storage blue:trims snout.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Snout","color":"#F2B01A"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim