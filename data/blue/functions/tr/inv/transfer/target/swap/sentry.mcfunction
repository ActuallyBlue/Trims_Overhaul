tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.sentry
advancement grant @s only blue:tr/trust sentry
tag @s add blue.tr.sentry
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/sentry
data modify storage blue:trims sentry.owner.text set from storage blue:shared player_name
data modify storage blue:trims logs.append.trim set value {"translate":"Sentry","color":"#4B885B"}
function blue:tr/inv/transfer/target/swap/all
data remove storage blue:trims log.append.trim