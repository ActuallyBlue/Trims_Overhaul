data modify storage blue:trims fake_inv append from entity @s Item
data modify entity @s {} merge from storage blue:trims merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @s @a[tag=blue.tr.killer,limit=1]
scoreboard players set #.temp blue.misc -1
execute unless items entity @s contents *[trim~{pattern:wayfinder}] unless items entity @s contents wayfinder_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 16
execute unless score #.temp blue.misc matches 16 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents wayfinder_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 16 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:wayfinder}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:silence}] unless items entity @s contents silence_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 15
execute unless score #.temp blue.misc matches 15 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents silence_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 15 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:silence}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:raiser}] unless items entity @s contents raiser_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 14
execute unless score #.temp blue.misc matches 14 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents raiser_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 14 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:raiser}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:shaper}] unless items entity @s contents shaper_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 13
execute unless score #.temp blue.misc matches 13 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents shaper_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 13 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:shaper}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:sentry}] unless items entity @s contents sentry_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 12
execute unless score #.temp blue.misc matches 12 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents sentry_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 12 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:sentry}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:spire}] unless items entity @s contents spire_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 11
execute unless score #.temp blue.misc matches 11 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents spire_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 11 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:spire}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:coast}] unless items entity @s contents coast_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 10
execute unless score #.temp blue.misc matches 10 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents coast_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 10 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:coast}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:snout}] unless items entity @s contents snout_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 9
execute unless score #.temp blue.misc matches 9 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents snout_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 9 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:snout}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:ward}] unless items entity @s contents ward_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 8
execute unless score #.temp blue.misc matches 8 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents ward_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 8 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:ward}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:dune}] unless items entity @s contents dune_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 7
execute unless score #.temp blue.misc matches 7 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents dune_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 7 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:dune}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:wild}] unless items entity @s contents wild_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 6
execute unless score #.temp blue.misc matches 6 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents wild_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 6 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:wild}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:tide}] unless items entity @s contents tide_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 5
execute unless score #.temp blue.misc matches 5 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents tide_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 5 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:tide}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:host}] unless items entity @s contents host_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 4
execute unless score #.temp blue.misc matches 4 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents host_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 4 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:host}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:eye}] unless items entity @s contents eye_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 3
execute unless score #.temp blue.misc matches 3 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents eye_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 3 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:eye}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:rib}] unless items entity @s contents rib_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 2
execute unless score #.temp blue.misc matches 2 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents rib_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 2 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:rib}] run function blue:tr/inv/died/extra
execute unless items entity @s contents *[trim~{pattern:vex}] unless items entity @s contents vex_armor_trim_smithing_template run scoreboard players set #.temp blue.misc 1
execute unless score #.temp blue.misc matches 1 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents vex_armor_trim_smithing_template run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 1 as @e[distance=..3,tag=!blue.tr.checked,type=item] if items entity @s contents *[trim~{pattern:vex}] run function blue:tr/inv/died/extra
tag @e[tag=blue.tr.extra,type=item] add blue.tr.checked
scoreboard players set #.temp blue.misc 1