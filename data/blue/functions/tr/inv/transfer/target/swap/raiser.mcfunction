tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.raiser
advancement grant @s only blue:tr/trust raiser
tag @s add blue.tr.raiser
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/raiser
data modify storage blue:trims raiser.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Raiser","color":"#95B623"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim