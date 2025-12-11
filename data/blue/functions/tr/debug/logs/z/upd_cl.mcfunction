data modify storage blue:trims logs.temp[-1].user set from storage blue:trims logs.temp[-1].player
data remove storage blue:trims logs.temp[-1].player
data modify storage blue:trims logs.replace prepend from storage blue:trims logs.temp[-1]
data remove storage blue:trims logs.temp[-1]
execute if data storage blue:trims logs.temp[] run function blue:tr/debug/logs/z/upd_cl