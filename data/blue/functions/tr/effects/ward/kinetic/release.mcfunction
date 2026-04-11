scoreboard players set #.temp blue.misc 0
function blue:tr/effects/ward/stonewall
scoreboard players reset #.ward.blocking blue.misc
scoreboard players reset #.ward.max_sound blue.misc
scoreboard players operation #.temp blue.misc = @s blue.tr.damage_blocked
execute unless score #.temp blue.misc matches 400.. run return 0
effect clear @s slowness
scoreboard players set #.ward.kinetic_cooldown blue.misc 1
schedule function blue:tr/effects/ward/kinetic/cooldown 180t
execute if entity @s[x_rotation=75..90] run function blue:tr/effects/ward/kinetic/field/create
execute if entity @s[x_rotation=75..90] run return 0
summon block_display ^ ^ ^1 {UUID:[I;-1318907857,10,0,1],Tags:["smithed.entity","smithed.strict"],block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[3f,3f,0.3f],translation:[-1.5f,-1.5f,0f]}}
summon block_display ^ ^ ^1 {Tags:["smithed.entity","smithed.strict","blue.tr.ward.barrier"],block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[2f,2f,0.2f],translation:[-1f,-1f,0.25f]}}
summon block_display ^ ^ ^1 {Tags:["smithed.entity","smithed.strict","blue.tr.ward.barrier"],block_state:{Name:"tinted_glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1f,1f,0.2f],translation:[-0.5f,-0.5f,0.4f]}}
tp b163102f-0-a-0-1 ^ ^ ^1 ~ ~
tp @e[tag=blue.tr.ward.barrier,distance=..5,type=block_display] ^ ^ ^1 ~ ~
execute as @e[tag=blue.tr.ward.barrier,type=block_display] run ride @s mount b163102f-0-a-0-1
execute as b163102f-0-a-0-1 run scoreboard players operation @s blue.tr.damage_blocked = #.temp blue.misc
data modify entity b163102f-0-a-0-1 teleport_duration set value 1
playsound entity.player.attack.crit player @a ~ ~ ~ 0.75 0.5
playsound entity.minecart.riding player @a[distance=..16] ~ ~ ~ 5 2
schedule function blue:tr/effects/ward/kinetic/barrier/loop 1t