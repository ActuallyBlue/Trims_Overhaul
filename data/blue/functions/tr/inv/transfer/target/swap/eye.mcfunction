tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.eye
advancement grant @s only blue:tr/trust eye
tag @s add blue.tr.eye
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/eye
data modify storage blue:trims eye.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Eye","color":"#1F8A46"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim