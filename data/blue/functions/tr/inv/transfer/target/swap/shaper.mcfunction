tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.shaper
advancement grant @s only blue:tr/trust shaper
tag @s add blue.tr.shaper
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/shaper
data modify storage blue:trims shaper.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Shaper","color":"#8F8F8F"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim