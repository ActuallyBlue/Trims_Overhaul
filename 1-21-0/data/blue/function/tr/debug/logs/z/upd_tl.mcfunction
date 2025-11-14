data modify storage blue:data trims.logs.temp[-1].target set from storage blue:data trims.logs.temp[-1].player
data modify storage blue:data trims.logs.temp[-1].user set value "(??)"
data remove storage blue:data trims.logs.temp[-1].player
data modify storage blue:data trims.logs.replace prepend from storage blue:data trims.logs.temp[-1]
data remove storage blue:data trims.logs.temp[-1]
execute if data storage blue:data trims.logs.temp[] run function blue:tr/debug/logs/z/upd_tl