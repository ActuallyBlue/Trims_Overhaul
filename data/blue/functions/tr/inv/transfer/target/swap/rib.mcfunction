tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.rib
advancement grant @s only blue:tr/trust rib
tag @s add blue.tr.rib
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/rib
data modify storage blue:trims rib.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Rib","color":"#E6484B"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim