tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.host
advancement grant @s only blue:tr/trust host
tag @s add blue.tr.host
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/host
data modify storage blue:trims host.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Host","color":"#A34646"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim