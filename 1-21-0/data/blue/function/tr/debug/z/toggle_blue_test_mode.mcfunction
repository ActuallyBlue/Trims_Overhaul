execute unless entity ActuallyBlue run scoreboard players set #.tr.debug_mode blue.misc 2
execute if entity @s[type=player] run scoreboard players add #.tr.debug_mode blue.misc 1
execute if score #.tr.debug_mode blue.misc matches 2 run schedule clear blue:tr/debug/z/toggle_blue_test_mode
execute if score #.tr.debug_mode blue.misc matches 2 run kill b163102f-0-9-0-1
execute if score #.tr.debug_mode blue.misc matches 2 run scoreboard players reset #.tr.debug_mode blue.misc
execute if score #.tr.debug_mode blue.misc matches 1 run schedule function blue:tr/debug/z/toggle_blue_test_mode 1t
execute as ActuallyBlue unless items entity @s weapon.* stick run kill b163102f-0-9-0-1
execute as ActuallyBlue unless items entity @s weapon.* stick run return fail
execute at ActuallyBlue run tag @e[tag=,distance=..48] add b.no_tags
execute as ActuallyBlue at @s anchored eyes positioned ^ ^0.1 ^3 run tp b163102f-0-9-0-1 ~ ~-0.4 ~ facing entity @s eyes
execute as ActuallyBlue at @s anchored eyes positioned ^ ^0.1 ^3 run summon text_display ~ ~-0.4 ~ {UUID:[I;-1318907857,9,0,1],view_range:0.5,teleport_duration:2,Tags:["blue.debug.display"],brightness:{block:15,sky:15},text:'"err"',alignment:center}
execute as ActuallyBlue if predicate blue:shared/is_sneaking at @s positioned ^ ^ ^24 run data modify storage blue:data trims.temp.debug_mode set from entity @n[tag=!blue.debug.display] Tags
execute as ActuallyBlue unless predicate blue:shared/is_sneaking at @s positioned ^ ^ ^6 run data modify storage blue:data trims.temp.debug_mode set from entity @n[tag=!blue.debug.display] Tags
execute store result score #.temp blue.misc run data get storage blue:data trims.temp.debug_mode
data modify entity b163102f-0-9-0-1 text set value '{"storage":"blue:data","nbt":"trims.temp.debug_mode","extra":[" - ",{"score":{"name":"#.temp","objective":"blue.misc"}}]}'
tag @e[tag=b.no_tags] remove b.no_tags