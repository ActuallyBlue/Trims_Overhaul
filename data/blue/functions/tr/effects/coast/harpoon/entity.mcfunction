execute unless entity @s[type=player] at @s facing entity @a[tag=blue.tr.coast,limit=1] feet rotated ~ ~-14 run function blue:tr/effects/coast/harpoon/shootfacing
execute unless entity @s[gamemode=!spectator,gamemode=!creative] run return 0
schedule function blue:tr/effects/coast/harpoon/delay 2t
execute if score #.temp blue.misc matches 1 run tag @s add blue.tr.coast.delay_strong
tag @s add blue.tr.coast.delay