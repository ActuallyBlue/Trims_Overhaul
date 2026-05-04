tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.ward
advancement grant @s only blue:tr/trust ward
tag @s add blue.tr.ward
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/ward
data modify storage blue:trims ward.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Ward","color":"#5C70AE"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim