execute in the_nether run forceload add 200600 200600
execute in the_nether run setblock 200600 2 200600 barrel{}
execute in overworld run forceload add 200600 200600
execute in overworld run fill 200601 0 200599 200599 3 200601 bedrock
execute in overworld run setblock 200600 1 200600 air
execute in overworld run setblock 200600 2 200600 barrel{}
execute in the_end run forceload add 200600 200600
execute in the_end run setblock 200600 2 200600 barrel{}
kill b163102f-0-0-0-100000000
execute in overworld run summon armor_stand 200600 3 200600 {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,0,1,0],Marker:1b,NoBasePlate:1b,Small:1b,Invisible:1b}
schedule function blue:shared/repeat 1s
scoreboard objectives add blue.rejoin custom:leave_game
scoreboard objectives add blue.particles dummy
scoreboard objectives add blue.config dummy
scoreboard objectives add blue.misc dummy
scoreboard objectives add blue.id dummy