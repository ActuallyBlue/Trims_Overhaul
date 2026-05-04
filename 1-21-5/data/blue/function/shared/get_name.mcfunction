loot replace entity b163102f-0-0-0-100000000 weapon loot {pools:[{rolls:1,entries:[{type:item,name:player_head,functions:[{function:fill_player_head,entity:this}]}]}]}
data modify storage blue:shared player_name set from entity b163102f-0-0-0-100000000 equipment.mainhand.components.minecraft:profile.name
function #blue:shared/setup_logs