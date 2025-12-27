execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={trim_limit=false}}] unless entity @s[tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] run advancement grant @s only blue:tr/tags trim_limit
execute if score #.tr.limit_owned_trims blue.config matches 1 run advancement revoke @s[advancements={blue:tr/tags={trim_limit=true}},tag=!blue.tr.wayfinder,tag=!blue.tr.silence,tag=!blue.tr.shaper,tag=!blue.tr.raiser,tag=!blue.tr.sentry,tag=!blue.tr.spire,tag=!blue.tr.coast,tag=!blue.tr.snout,tag=!blue.tr.ward,tag=!blue.tr.dune,tag=!blue.tr.wild,tag=!blue.tr.tide,tag=!blue.tr.host,tag=!blue.tr.eye,tag=!blue.tr.rib,tag=!blue.tr.vex] only blue:tr/tags trim_limit
execute unless score #.tr.limit_owned_trims blue.config matches 2.. run return 0
execute store success score #.temp blue.misc if entity @s[tag=blue.tr.wayfinder]
execute if entity @s[tag=blue.tr.silence] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.raiser] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.shaper] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.sentry] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.spire] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.coast] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.snout] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.ward] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.dune] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.wild] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.tide] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.host] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.eye] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.rib] run scoreboard players add #.temp blue.misc 1
execute if entity @s[tag=blue.tr.vex] run scoreboard players add #.temp blue.misc 1
execute if score #.temp blue.misc >= #.tr.limit_owned_trims blue.config run advancement grant @s only blue:tr/tags trim_limit
execute unless score #.temp blue.misc >= #.tr.limit_owned_trims blue.config run advancement revoke @s only blue:tr/tags trim_limit