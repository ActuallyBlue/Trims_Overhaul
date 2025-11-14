function blue:shared/get_name
$execute if data storage blue:data shared.players[{UUID:$(uuid)}].name run function #blue:shared/name_changed with storage blue:data shared.players[{UUID:$(uuid)}]
$execute if data storage blue:data shared.players[{UUID:$(uuid)}].name run return run data modify storage blue:data shared.players[{UUID:$(uuid)}].name set from storage blue:data player_name
execute store result score .val blue.id run data get storage blue:data shared.global_id
$data modify storage blue:data shared.players append value {UUID:$(uuid)}
$data modify storage blue:data shared.players[{UUID:$(uuid)}].name set from storage blue:data player_name
$execute store result score @s blue.id store result storage blue:data shared.global_id int 1 store result storage blue:data shared.players[{UUID:$(uuid)}].id int 1 run scoreboard players add .val blue.id 1