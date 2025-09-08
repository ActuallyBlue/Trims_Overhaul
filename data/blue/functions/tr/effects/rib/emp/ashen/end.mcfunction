execute as @e[team=blue.tr.rib,type=!player] at @s run function blue:tr/effects/rib/emp/ashen/kill
schedule function blue:tr/effects/rib/emp/ashen/cooldown 600t
playsound entity.illusioner.cast_spell player @s ~ ~ ~ 2 1.5
team leave @s[team=blue.tr.rib]