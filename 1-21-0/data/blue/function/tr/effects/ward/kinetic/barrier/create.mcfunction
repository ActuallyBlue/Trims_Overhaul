summon block_display ^ ^ ^1 {UUID:[I;-1318907857,10,0,1],Tags:["smithed.entity","smithed.strict"],block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[3f,3f,0.3f],translation:[-1.5f,-1.5f,0f]},Passengers:[{id:"block_display",block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,0.2f],translation:[-1f,-1f,0.25f]}},{id:"block_display",block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.2f],translation:[-0.5f,-0.5f,0.4f]}}]}
tp b163102f-0-a-0-1 ^ ^ ^1 ~ ~
execute as b163102f-0-a-0-1 run scoreboard players operation @s blue.tr.damage_blocked = #.temp blue.misc
data modify entity b163102f-0-a-0-1 teleport_duration set value 1
playsound entity.player.attack.crit player @a ~ ~ ~ 0.75 0.5
playsound entity.minecart.riding player @a[distance=..16] ~ ~ ~ 5 2
schedule function blue:tr/effects/ward/kinetic/barrier/loop 1t