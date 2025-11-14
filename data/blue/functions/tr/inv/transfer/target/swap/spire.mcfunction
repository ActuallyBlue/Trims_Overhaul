tag @a[tag=blue.tr.transfer_user,limit=1] remove blue.tr.spire
advancement grant @s only blue:tr/trust spire
tag @s add blue.tr.spire
function blue:shared/get_name
execute at @s[tag=blue.tr.transfer_target] run loot spawn ~ ~1 ~ loot blue:tr/spire
data modify storage blue:data trims.spire.owner.text set from storage blue:data player_name
advancement grant @s[advancements={blue:tr/tags={has_trim=false}}] only blue:tr/tags has_trim
advancement grant @s[advancements={blue:tr/display/guides/ownership=false}] only blue:tr/display/guides/ownership
tellraw @s[tag=blue.tr.transfer_target] [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.given_ownership","fallback":"You've been given ownership over ","color":"gray"},{"translate":"Spire","color":"#BE20C7"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 50"},"color":"gray"}]
execute if entity @s[tag=blue.tr.transfer_target] run return 0
data modify storage blue:data trims.logs.append.target set from storage blue:data player_name
data modify storage blue:data trims.logs.append.trim set value {"translate":"Spire","color":"#BE20C7"}
data modify storage blue:data trims.logs.append.user set from storage blue:data player_name_temp
data modify storage blue:data trims.logs.append.stolen set value 1b
function blue:tr/inv/transfer/log
tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.stolen_ownership","fallback":"You've stolen ownership over ","color":"gray"},{"translate":"Spire","color":"#BE20C7"}," ",{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.info_shortcut","fallback":"Click here for a shortcut to the info menu","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 50"},"color":"gray"}]