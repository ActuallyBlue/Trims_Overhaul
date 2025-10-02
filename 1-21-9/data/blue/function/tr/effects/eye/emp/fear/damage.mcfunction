particle flash{color:[1,1,1,0.5]} ~ ~1 ~ 0.2 0.2 0.2 0 1 force @s[scores={blue.particles=1..}]
playsound entity.player.attack.crit player @s ^ ^ ^2 1.5 1
damage @s 6 player_attack by @a[tag=blue.tr.eye,limit=1]
damage @s 0.1 blue:tr/raw