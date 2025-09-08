tag @e[type=!player,tag=blue.tr.host.morale,distance=18..32] remove blue.tr.host.morale
execute as @e[type=iron_golem,tag=!smithed.strict,distance=..16] run function blue:tr/effects/host/morale
execute as @e[type=villager,tag=!smithed.strict,distance=..16] run function blue:tr/effects/host/morale
execute unless score #.host.res blue.misc matches 1 run return fail
scoreboard players reset #.host.res blue.misc
effect give @s resistance 4 0 true