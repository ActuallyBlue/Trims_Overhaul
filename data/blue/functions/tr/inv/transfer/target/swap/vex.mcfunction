tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.vex
advancement grant @s only blue:tr/trust vex
tag @s add blue.tr.vex
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/vex
data modify storage blue:trims vex.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Vex","color":"#CFC6A5"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim