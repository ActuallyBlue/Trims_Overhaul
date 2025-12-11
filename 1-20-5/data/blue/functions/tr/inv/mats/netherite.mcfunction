advancement grant @s[advancements={blue:tr/display/netherite=false}] only blue:tr/display/netherite
tag @s add blue.tr.mats.set
attribute @s[tag=!blue.tr.trim.ward] generic.armor_toughness modifier add b163102f-0-4-0-1 "blue:tr.set" 3 add_value
execute unless entity @s[tag=blue.tr.trim.ward] run return run attribute @s generic.armor modifier add b163102f-0-4-0-1 "blue:tr.set" 2 add_value
attribute @s generic.armor_toughness modifier add b163102f-0-4-0-1 "blue:tr.set" 3.6 add_value
attribute @s generic.armor modifier add b163102f-0-4-0-1 "blue:tr.set" 2.4 add_value