function blue:tr/inv/transfer/target/armor/store
execute unless score #.temp0 blue.misc matches 4 run return 0
execute unless score #.temp blue.misc matches 0 run return 0
tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.coast
advancement grant @s only blue:tr/trust coast
tag @s add blue.tr.coast
tag @s add blue.tr.ignore_first
function blue:tr/inv/transfer/target/armor/change
function blue:shared/get_name
data modify storage blue:trims coast.owner.text set from storage blue:shared player_name
advancement grant @s[advancements={blue:tr/tags={trim_limit=false}}] only blue:tr/tags trim_limit
advancement grant @s[advancements={blue:tr/display/guides/ownership=false}] only blue:tr/display/guides/ownership
tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.given_ownership","fallback":"You've been given ownership over ","color":"gray"},{"translate":"Coast","color":"#C1C888"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 50"},"color":"gray"}]