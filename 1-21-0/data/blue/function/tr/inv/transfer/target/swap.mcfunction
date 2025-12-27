$tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.$(trim)
$tag @s add blue.tr.$(trim)
$advancement grant @s only blue:tr/trust $(trim)
function blue:shared/get_name
$execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/$(trim)
$data modify storage blue:trims $(trim).owner.text set from storage blue:shared player_name
advancement grant @s[advancements={blue:tr/tags={trim_limit=false}}] only blue:tr/tags trim_limit
advancement grant @s[advancements={blue:tr/display/guides/ownership=false}] only blue:tr/display/guides/ownership
$execute if entity @s[tag=blue.tr.transfer_target] run return run tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.given_ownership","fallback":"You've been given ownership over ","color":"gray"},{"translate":"$(translate)","color":"$(color)"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 50"},"click_event":{"action":"run_command","command":"/trigger Trims_Menu.BLUE set 50"},"color":"gray"}]
data modify storage blue:trims logs.append.target set from storage blue:shared player_name
$data modify storage blue:trims logs.append.trim set value {"translate":"$(translate)","color":"$(color)"}
data modify storage blue:trims logs.append.user set from storage blue:shared player_name_temp
data modify storage blue:trims logs.append.stolen set value 1b
function blue:tr/inv/transfer/log
$tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.stolen_ownership","fallback":"You've stolen ownership over ","color":"gray"},{"translate":"$(translate)","color":"$(color)"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 50"},"click_event":{"action":"run_command","command":"/trigger Trims_Menu.BLUE set 50"},"color":"gray"}]