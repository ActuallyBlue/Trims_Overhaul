say a
item replace entity b163102f-0-0-0-100000000 weapon with player_head
item modify entity b163102f-0-0-0-100000000 weapon blue:shared/head
data modify storage blue:data player_name set from entity b163102f-0-0-0-100000000 HandItems[0].components.minecraft:profile.name
function #blue:shared/setup_logs