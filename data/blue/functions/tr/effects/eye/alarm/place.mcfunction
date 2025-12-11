kill b163102f-0-1-0-1
execute positioned ~30 ~ ~-30 if predicate blue:shared/in_stronghold store success score #.eye.alarm_placed blue.misc run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,1,0,1]}
execute unless score #.eye.alarm_placed blue.misc matches 1 positioned ~-30 ~ ~30 if predicate blue:shared/in_stronghold store success score #.eye.alarm_placed blue.misc run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,1,0,1]}
execute unless score #.eye.alarm_placed blue.misc matches 1 positioned ~-30 ~ ~-30 if predicate blue:shared/in_stronghold store success score #.eye.alarm_placed blue.misc run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,1,0,1]}
execute unless score #.eye.alarm_placed blue.misc matches 1 positioned ~30 ~ ~30 if predicate blue:shared/in_stronghold store success score #.eye.alarm_placed blue.misc run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,1,0,1]}
execute unless score #.eye.alarm_placed blue.misc matches 1 store success score #.eye.alarm_placed blue.misc run summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,1,0,1]}
data modify storage blue:trims temp.pos set from entity b163102f-0-1-0-1 Pos
data modify storage blue:trims eye.x set from storage blue:trims temp.pos[0]
data modify storage blue:trims eye.y set from storage blue:trims temp.pos[1]
data modify storage blue:trims eye.z set from storage blue:trims temp.pos[2]