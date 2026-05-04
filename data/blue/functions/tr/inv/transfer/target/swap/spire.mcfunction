tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.spire
advancement grant @s only blue:tr/trust spire
tag @s add blue.tr.spire
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/spire
data modify storage blue:trims spire.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Spire","color":"#BE20C7"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim