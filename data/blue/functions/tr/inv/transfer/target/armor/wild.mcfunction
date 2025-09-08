function blue:tr/inv/transfer/target/armor/store
execute unless score #.pieces blue.misc matches 4.. run return 0
tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.wild
advancement grant @s only blue:tr/trust wild
tag @s add blue.tr.wild
tag @s add blue.tr.ignore_first
function blue:tr/inv/transfer/target/armor/change
function blue:shared/get_name
data modify storage blue:data trims.wild.owner.text set from storage blue:data player_name
advancement grant @s[advancements={blue:tr/actual/general/guide3=false}] only blue:tr/actual/general/guide3
tellraw @s[tag=!blue.tr.no_notify] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.given_ownership","fallback":"You've been given ownership over ","color":"gray"},{"translate":"Wild","color":"#00D529"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger TrimCMDs.BLUE set 50"},"color":"gray"}]