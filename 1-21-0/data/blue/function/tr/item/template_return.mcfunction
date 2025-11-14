execute if items entity @s contents *[count=1] run scoreboard players set #.temp blue.misc 1
execute if items entity @s contents *[count=2] run scoreboard players set #.temp blue.misc 2
execute if items entity @s contents *[count=3] run scoreboard players set #.temp blue.misc 3
execute if items entity @s contents *[count={min:4}] run scoreboard players set #.temp blue.misc 4
execute if entity @s[tag=blue.tr.wayfinder_item] run scoreboard players operation #.wayfinder_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.silence_item] run scoreboard players operation #.silence_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.shaper_item] run scoreboard players operation #.shaper_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.raiser_item] run scoreboard players operation #.raiser_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.sentry_item] run scoreboard players operation #.sentry_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.spire_item] run scoreboard players operation #.spire_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.coast_item] run scoreboard players operation #.coast_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.snout_item] run scoreboard players operation #.snout_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.ward_item] run scoreboard players operation #.ward_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.flow_item] run scoreboard players operation #.flow_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.bolt_item] run scoreboard players operation #.bolt_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.dune_item] run scoreboard players operation #.dune_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.wild_item] run scoreboard players operation #.wild_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.tide_item] run scoreboard players operation #.tide_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.host_item] run scoreboard players operation #.host_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.eye_item] run scoreboard players operation #.eye_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.rib_item] run scoreboard players operation #.rib_stored blue.misc += #.temp blue.misc
execute if entity @s[tag=blue.tr.vex_item] run scoreboard players operation #.vex_stored blue.misc += #.temp blue.misc
kill