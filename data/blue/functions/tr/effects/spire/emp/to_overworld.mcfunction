advancement revoke @s only blue:tr/spire_land req
execute as b163102f-0-2-0-1 run kill @s[type=!marker]
particle end_rod ~ ~1 ~ 0.2 0.3 0.2 0.1 32 force
particle reverse_portal ~ ~ ~ 0.3 0.5 0.3 0.5 240 force
playsound entity.illusioner.mirror_move player @a[x=0] ~ -20 ~ 16 0.5
execute in overworld run tp ~ 360 ~
execute in overworld run particle reverse_portal ~ 400 ~ 0.3 0.4 0.3 0.1 200 force
execute in overworld run playsound entity.illusioner.mirror_move player @s ~ 404 ~ 10 0.5
effect give @s resistance 60 78 true
effect give @s glowing 8 0 true
execute if score #.spire.aperture blue.config matches 2 run return 0
execute if entity b163102f-0-2-0-1 run return 0
forceload add ~ ~
particle end_rod ~ ~32 ~ 0.2 24 0.2 0.05 128 force
summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,2,0,1]}
playsound block.end_portal.spawn player @a[x=0] ~ -30 ~ 16 1
scoreboard players set #.aperture_sound blue.misc 20
execute as b163102f-0-2-0-1 at @s run function blue:tr/effects/spire/emp/aperture/marker
schedule function blue:tr/effects/spire/emp/aperture/find 1t