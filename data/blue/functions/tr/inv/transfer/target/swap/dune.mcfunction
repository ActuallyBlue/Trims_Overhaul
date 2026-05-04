tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.dune
advancement grant @s only blue:tr/trust dune
tag @s add blue.tr.dune
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/dune
data modify storage blue:trims dune.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Dune","color":"#E7C547"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim