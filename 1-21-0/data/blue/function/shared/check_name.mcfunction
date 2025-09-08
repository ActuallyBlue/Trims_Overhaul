$execute if data storage blue:data shared.names[{uuid:$(UUID)}].name run return run function #blue:name_changed with storage blue:data shared.names[{uuid:$(UUID)}]
execute store result score @s blue.id run scoreboard players add .val blue.id 1
function blue:shared/get_name
$data modify storage blue:data shared.names append value {uuid:$(UUID)}
$data modify storage blue:data shared.names[{uuid:$(UUID)}].name set from storage blue:data player_name