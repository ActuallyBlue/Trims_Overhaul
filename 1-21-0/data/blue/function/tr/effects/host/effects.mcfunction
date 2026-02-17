execute store success score #.host.untrust blue.misc unless score #.host.untrust blue.misc matches 1
execute if score #.host.untrust blue.misc matches 1 run advancement revoke @s only blue:tr/host_untrust
tag @e[type=!player,tag=blue.tr.host.morale,distance=18..32] remove blue.tr.host.morale
execute as @e[tag=!smithed.strict,distance=..16,type=iron_golem] run function blue:tr/effects/host/morale
execute as @e[tag=!smithed.strict,distance=..16,type=villager] run function blue:tr/effects/host/morale
execute unless score #.host.res blue.misc matches 1 run return fail
scoreboard players reset #.host.res blue.misc
effect give @s resistance 4 0 true