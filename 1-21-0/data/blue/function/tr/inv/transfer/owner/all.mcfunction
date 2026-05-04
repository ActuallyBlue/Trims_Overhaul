playsound block.conduit.activate player @a ~ ~ ~ 2.5 1
playsound block.beacon.activate player @a ~ ~ ~ 2.5 0.6
playsound block.beacon.activate player @a ~ ~ ~ 2.5 1.75
data modify storage blue:trims logs.append.target set from storage blue:shared player_name
function blue:shared/get_name
tellraw @s [{"text":"- ","color":"dark_gray"},{"translate":"blue.tr.gave_ownership","fallback":"Successfully gave %s ownership over %s ","color":"gray","with":[{"selector":"@a[tag=blue.tr.transfer_target,limit=1]","color":"white"},{"storage":"blue:trims","nbt":"logs.append.trim","interpret":true}]},{"text":"ℹ","hoverEvent":{"action":"show_text","value":{"translate":"blue.tr.menu.owners_hover","fallback":"Display All Trim Owners","color":"gray"}},"clickEvent":{"action":"run_command","value":"/trigger Trims_Menu.BLUE set 3"},"hover_event":{"action":"show_text","value":{"translate":"blue.tr.menu.owners_hover","fallback":"Display All Trim Owners","color":"gray"}},"click_event":{"action":"run_command","command":"/trigger Trims_Menu.BLUE set 3"},"color":"gray"}]
function blue:tr/inv/transfer/log
stopsound @a[distance=..16] player block.end_portal_frame.fill