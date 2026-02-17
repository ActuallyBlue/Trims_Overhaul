playsound block.sculk_shrieker.shriek player @a ~ ~ ~ 0.75 1.5
schedule function blue:tr/effects/ward/resort/cooldown 300t
schedule function blue:tr/effects/ward/resort/aftershock 5t
playsound entity.warden.heartbeat player @a ~ ~ ~ 1.5 0.8
scoreboard players set #.ward.resort_cooldown blue.misc 1
particle sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0 64
effect give @s instant_health 3 0 true
scoreboard players set #.temp blue.misc -10000
item modify entity @s[gamemode=!creative] armor.head blue:shared/damage
item modify entity @s[gamemode=!creative] armor.chest blue:shared/damage
item modify entity @s[gamemode=!creative] armor.legs blue:shared/damage
item modify entity @s[gamemode=!creative] armor.feet blue:shared/damage