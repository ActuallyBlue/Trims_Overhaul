tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.coast
advancement grant @s only blue:tr/trust coast
tag @s add blue.tr.coast
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/coast
data modify storage blue:trims coast.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Coast","color":"#C1C888"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim