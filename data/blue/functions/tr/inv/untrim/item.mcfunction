data modify storage blue:trims item set from entity @s
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:eye"} run item replace entity b163102f-0-0-0-100000000 weapon with eye_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:rib"} run item replace entity b163102f-0-0-0-100000000 weapon with rib_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:vex"} run item replace entity b163102f-0-0-0-100000000 weapon with vex_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:tide"} run item replace entity b163102f-0-0-0-100000000 weapon with tide_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:ward"} run item replace entity b163102f-0-0-0-100000000 weapon with ward_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dune"} run item replace entity b163102f-0-0-0-100000000 weapon with dune_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wild"} run item replace entity b163102f-0-0-0-100000000 weapon with wild_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:host"} run item replace entity b163102f-0-0-0-100000000 weapon with host_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:spire"} run item replace entity b163102f-0-0-0-100000000 weapon with spire_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:snout"} run item replace entity b163102f-0-0-0-100000000 weapon with snout_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:coast"} run item replace entity b163102f-0-0-0-100000000 weapon with coast_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:shaper"} run item replace entity b163102f-0-0-0-100000000 weapon with shaper_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:sentry"} run item replace entity b163102f-0-0-0-100000000 weapon with sentry_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:raiser"} run item replace entity b163102f-0-0-0-100000000 weapon with raiser_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:silence"} run item replace entity b163102f-0-0-0-100000000 weapon with silence_armor_trim_smithing_template
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:wayfinder"} run item replace entity b163102f-0-0-0-100000000 weapon with wayfinder_armor_trim_smithing_template
scoreboard players set #.template_loot blue.misc 1
item modify entity b163102f-0-0-0-100000000 weapon blue:tr/template
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dragon_egg"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"stone",Count:1b},Tags:["blue.tr.untrim_item","blue.tr.untrim_temp"]}
execute unless data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dragon_egg"} run data modify entity @e[tag=blue.tr.untrim_temp,tag=blue.tr.untrim_item,type=item,sort=nearest,limit=1] Item set from entity b163102f-0-0-0-100000000 HandItems[0]
execute if data storage blue:trims item.Item.tag.Trim{pattern:"minecraft:dragon_egg"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"dragon_egg",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:quartz"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"quartz",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:iron"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"iron_ingot",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:gold"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"gold_ingot",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:emerald"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"emerald",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:diamond"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"diamond",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:redstone"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"redstone",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:lapis"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"lapis_lazuli",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:copper"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"copper_ingot",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:ender_eye"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"ender_eye",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:gunpowder"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"gunpowder",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:echo_shard"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"echo_shard",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:dragon_egg"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"dragon_egg",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:nether_star"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"nether_star",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:amethyst"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"amethyst_shard",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:netherite"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"netherite_ingot",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:blaze_powder"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"blaze_powder",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:shulker_shell"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"shulker_shell",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:nautilus_shell"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"nautilus_shell",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
execute if data storage blue:trims item.Item.tag.Trim{material:"minecraft:heart_of_the_sea"} run summon item ~ ~ ~ {PickupDelay:40s,Item:{id:"heart_of_the_sea",Count:1b},Tags:["blue.tr.checked","blue.tr.untrim_temp"]}
data remove entity @s Item.tag.Trim
execute as @e[tag=blue.tr.untrim_temp,type=item,limit=2] run data modify entity @s Motion set from storage blue:trims item.Motion
tag @e[tag=blue.tr.untrim_temp,type=item,limit=2] remove blue.tr.untrim_temp