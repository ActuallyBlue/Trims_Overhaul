scoreboard players remove @a[tag=blue.tr.host,limit=1] blue.tr.combat 500
execute store success score #.temp blue.misc if predicate blue:shared/in_village
execute if score #.temp blue.misc matches 1 unless entity @e[type=iron_golem,distance=..32,limit=1] run summon iron_golem ^ ^ ^-0.5 {Tags:["blue.tr.host.morale","blue.tr.host_guardian"],active_effects:[{id:"glowing",duration:100},{id:"fire_resistance",duration:1200,amplifier:2},{id:"resistance",duration:1200,amplifier:1},{id:"speed",duration:1200},{id:"strength",duration:1200,amplifier:1}]}
execute if score #.temp blue.misc matches 0 unless entity @e[type=iron_golem,distance=..32,limit=1] run summon iron_golem ^ ^ ^-0.5 {Tags:["blue.tr.host.morale","blue.tr.host_guardian"]}
effect give @e[type=iron_golem,distance=..32] speed 2 1 true
schedule function blue:tr/effects/host/post-guardian 1t