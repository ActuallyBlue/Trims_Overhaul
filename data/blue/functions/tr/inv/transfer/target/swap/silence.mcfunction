tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.silence
advancement grant @s only blue:tr/trust silence
tag @s add blue.tr.silence
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/silence
data modify storage blue:trims silence.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Silence","color":"#3842Cf"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim