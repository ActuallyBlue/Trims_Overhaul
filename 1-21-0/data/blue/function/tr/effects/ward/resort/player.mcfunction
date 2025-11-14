execute as @e[type=!#blue:shared/peaceful,distance=0.01..3.5] run damage @s 15 player_attack by @a[tag=blue.tr.ward,limit=1]
playsound entity.warden.attack_impact player @a ~ ~ ~ 5 0.5
particle sculk_charge_pop ~ ~1 ~ 0.3 0.4 0.3 0.3 128