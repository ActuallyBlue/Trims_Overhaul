scoreboard players reset #.temp blue.misc
execute if entity @a[distance=..6,advancements={blue:tr/trust={wild=false}},limit=1] summon marker run function blue:tr/effects/wild/emp/trap/sting_cast
playsound block.grass.place block @a[tag=blue.tr.wild] ~ -128 ~ 0 1.5 1
playsound block.grass.place block @a ~ ~ ~ 0.7 1.5
scoreboard players reset #.trap_activated blue.misc
scoreboard players set #.temp blue.misc -10
particle crit ~ ~0.125 ~ 0 0 0 0.3 32
kill