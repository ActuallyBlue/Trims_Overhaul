tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.tide
advancement grant @s only blue:tr/trust tide
tag @s add blue.tr.tide
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/tide
data modify storage blue:trims tide.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Tide","color":"#199ADD"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim