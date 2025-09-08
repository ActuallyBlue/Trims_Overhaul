execute unless entity @s[type=player] at @s facing entity @a[tag=blue.tr.coast,limit=1] feet rotated ~ ~-14 run function blue:tr/effects/coast/harpoon/shootfacing
execute unless entity @s[gamemode=!creative,gamemode=!spectator] run return 0
schedule function blue:tr/effects/coast/harpoon/delay 2t
tag @s add blue.tr.coast_delay