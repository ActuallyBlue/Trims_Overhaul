scoreboard players remove @a[tag=blue.tr.host,limit=1] blue.tr.combat 900
execute store success score #.temp blue.misc if predicate blue:shared/in_village
execute if score #.temp blue.misc matches 1 unless entity @e[distance=..32,limit=1,type=iron_golem] run summon iron_golem ^ ^ ^-0.5 {UUID:[I;-1318907857,17,0,1],Tags:["blue.tr.host.morale","blue.tr.host_guardian"],active_effects:[{id:"glowing",duration:100},{id:"fire_resistance",duration:1200,amplifier:2},{id:"resistance",duration:1200,amplifier:1},{id:"speed",duration:1200},{id:"weakness",duration:1200,amplifier:1}],DeathLootTable:""}
execute if score #.temp blue.misc matches 0 unless entity @e[distance=..32,limit=1,type=iron_golem] run summon iron_golem ^ ^ ^-0.5 {UUID:[I;-1318907857,17,0,1],Tags:["blue.tr.host.morale","blue.tr.host_guardian"],DeathLootTable:""}
effect give @e[distance=..32,type=iron_golem] speed 2 1 true
schedule function blue:tr/effects/host/guardian/sacrifice-user 10t
schedule function blue:tr/effects/host/guardian/despawn 20s
schedule function blue:tr/effects/host/guardian/anger 1t
effect give @a[tag=blue.tr.host,limit=1] resistance 3 2 true