execute store result entity @s Air int 1 run scoreboard players get #.20 blue.misc
particle sculk_charge_pop ~ ~0.49 ~ 0.175 0.175 0.175 0.01 14
particle sculk_charge_pop ~ ~0.49 ~ 0.175 0.175 0.175 0.01 6 force
particle smoke ~ ~0.4 ~ 0.175 0.175 0.175 0 1 force
particle glow ~ ~0.4 ~ 0.175 0.1755 0.1755 0 1
execute if block ~ ~-0.5 ~ #blue:trims/passable if block ~0.5 ~ ~ #blue:trims/passable if block ~-0.5 ~ ~ #blue:trims/passable if block ~ ~ ~0.5 #blue:trims/passable if block ~ ~ ~-0.5 #blue:trims/passable if block ~ ~0.5 ~ #blue:trims/passable if block ~-0.5 ~ ~-0.5 #blue:trims/passable if block ~0.5 ~ ~-0.5 #blue:trims/passable if block ~-0.5 ~ ~0.5 #blue:trims/passable if block ~0.5 ~ ~0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~ #blue:trims/passable if block ~0.5 ~0.5 ~ #blue:trims/passable if block ~-0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~ #blue:trims/passable if block ~0.5 ~-0.5 ~ #blue:trims/passable if block ~-0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~0.5 ~0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~0.5 ~0.5 #blue:trims/passable if block ~0.5 ~0.5 ~0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~0.5 ~-0.5 ~-0.5 #blue:trims/passable if block ~-0.5 ~-0.5 ~0.5 #blue:trims/passable if block ~0.5 ~-0.5 ~0.5 #blue:trims/passable run return fail
summon marker ~ ~ ~ {Tags:["smithed.entity","smithed.strict"],UUID:[I;-1318907857,6,0,1]}
playsound entity.warden.sonic_charge player @a ~ ~ ~ 2.5 0.75
effect give @e[type=!#blue:tr/peaceful,tag=!blue.tr.silence,distance=..8] slowness 2 0
particle sculk_charge_pop ~ ~0.1 ~ 0 0 0 0.5 280
playsound entity.warden.nearby_closest master @a ~ ~ ~ 2.5 0.5
playsound entity.warden.nearby_closest master @a ~ ~ ~ 2.5 0.5
playsound entity.warden.nearby_closest master @a ~ ~ ~ 2.5 0.5
playsound entity.warden.nearby_closest master @a ~ ~ ~ 2.5 0.5
playsound entity.warden.nearby_closest master @a ~ ~ ~ 2.5 0.5
schedule function blue:tr/effects/silence/emp/vortex/loop 1t
kill