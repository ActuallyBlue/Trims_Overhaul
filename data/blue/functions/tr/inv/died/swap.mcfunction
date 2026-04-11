data modify storage blue:trims fake_inv append from storage blue:trims item.Item
data modify entity @s {} merge from storage blue:trims merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @s @a[tag=blue.tr.killer,limit=1]
scoreboard players set #.temp blue.misc -1
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wayfinder"} unless data storage blue:trims item.Item{id:"minecraft:wayfinder_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 16
execute unless score #.temp blue.misc matches 16 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:wayfinder_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 16 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wayfinder"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:silence"} unless data storage blue:trims item.Item{id:"minecraft:silence_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 15
execute unless score #.temp blue.misc matches 15 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:silence_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 15 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:silence"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:raiser"} unless data storage blue:trims item.Item{id:"minecraft:raiser_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 14
execute unless score #.temp blue.misc matches 14 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:raiser_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 14 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:raiser"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:shaper"} unless data storage blue:trims item.Item{id:"minecraft:shaper_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 13
execute unless score #.temp blue.misc matches 13 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:shaper_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 13 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:shaper"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:sentry"} unless data storage blue:trims item.Item{id:"minecraft:sentry_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 12
execute unless score #.temp blue.misc matches 12 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:sentry_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 12 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:sentry"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:spire"} unless data storage blue:trims item.Item{id:"minecraft:spire_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 11
execute unless score #.temp blue.misc matches 11 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:spire_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 11 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:spire"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:coast"} unless data storage blue:trims item.Item{id:"minecraft:coast_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 10
execute unless score #.temp blue.misc matches 10 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:coast_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 10 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:coast"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:snout"} unless data storage blue:trims item.Item{id:"minecraft:snout_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 9
execute unless score #.temp blue.misc matches 9 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:snout_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 9 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:snout"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:ward"} unless data storage blue:trims item.Item{id:"minecraft:ward_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 8
execute unless score #.temp blue.misc matches 8 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:ward_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 8 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:ward"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dune"} unless data storage blue:trims item.Item{id:"minecraft:dune_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 7
execute unless score #.temp blue.misc matches 7 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:dune_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 7 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:dune"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wild"} unless data storage blue:trims item.Item{id:"minecraft:wild_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 6
execute unless score #.temp blue.misc matches 6 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:wild_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 6 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:wild"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:tide"} unless data storage blue:trims item.Item{id:"minecraft:tide_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 5
execute unless score #.temp blue.misc matches 5 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:tide_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 5 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:tide"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:host"} unless data storage blue:trims item.Item{id:"minecraft:host_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 4
execute unless score #.temp blue.misc matches 4 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:host_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 4 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:host"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:eye"} unless data storage blue:trims item.Item{id:"minecraft:eye_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 3
execute unless score #.temp blue.misc matches 3 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:eye_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 3 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:eye"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:rib"} unless data storage blue:trims item.Item{id:"minecraft:rib_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 2
execute unless score #.temp blue.misc matches 2 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:rib_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 2 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:rib"}}}},type=item] run function blue:tr/inv/died/extra
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:vex"} unless data storage blue:trims item.Item{id:"minecraft:vex_armor_trim_smithing_template"} run scoreboard players set #.temp blue.misc 1
execute unless score #.temp blue.misc matches 1 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{id:"minecraft:vex_armor_trim_smithing_template"}},type=item] run function blue:tr/inv/died/extra
execute unless score #.temp blue.misc matches 1 as @e[distance=..3,tag=!blue.tr.checked,nbt={Item:{tag:{Trim:{pattern:"minecraft:vex"}}}},type=item] run function blue:tr/inv/died/extra
tag @e[tag=blue.tr.extra,type=item] add blue.tr.checked
scoreboard players set #.temp blue.misc 1