tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.wayfinder
advancement grant @s only blue:tr/trust wayfinder
tag @s add blue.tr.wayfinder
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/wayfinder
data modify storage blue:trims wayfinder.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Wayfinder","color":"#F1FFC8"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim