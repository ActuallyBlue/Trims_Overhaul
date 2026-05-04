tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.wild
advancement grant @s only blue:tr/trust wild
tag @s add blue.tr.wild
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/wild
data modify storage blue:trims wild.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Wild","color":"#00D529"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim