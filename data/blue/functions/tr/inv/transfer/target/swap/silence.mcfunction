tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.silence
advancement grant @s only blue:tr/trust silence
tag @s add blue.tr.silence
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/silence
data modify storage blue:data trims.silence.owner.text set from storage blue:data player_name
advancement grant @s[advancements={blue:tr/actual/general/guide3=false}] only blue:tr/actual/general/guide3
tellraw @s[tag=!blue.tr.no_notify,tag=!blue.tr.transfer_target] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.stolen_ownership","fallback":"You've stolen ownership over ","color":"gray"},{"translate":"Silence","color":"#3842Cf"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger TrimCMDs.BLUE set 50"},"color":"gray"}]
tellraw @s[tag=!blue.tr.no_notify,tag=blue.tr.transfer_target] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.given_ownership","fallback":"You've been given ownership over ","color":"gray"},{"translate":"Silence","color":"#3842Cf"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger TrimCMDs.BLUE set 50"},"color":"gray"}]