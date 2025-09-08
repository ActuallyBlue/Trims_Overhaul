item replace entity b163102f-0-0-0-100000000 weapon with player_head
item modify entity b163102f-0-0-0-100000000 weapon blue:head
data modify storage blue:data player_name set from entity b163102f-0-0-0-100000000 HandItems[0].components.minecraft:profile.name
data modify storage blue:data trims.telemetry.append.player set from storage blue:data player_name
execute store result storage blue:data trims.telemetry.append.time int 0.00083334 run time query gametime