advancement grant @s[advancements={blue:tr/display/netherite=false}] only blue:tr/display/netherite
tag @s add blue.tr.mats.set
attribute @s[tag=!blue.tr.trim.ward] armor_toughness modifier add blue:tr.set 3 add_value
execute unless entity @s[tag=blue.tr.trim.ward] run return run attribute @s armor modifier add blue:tr.set 2 add_value
attribute @s armor_toughness modifier add blue:tr.set 3.6 add_value
attribute @s armor modifier add blue:tr.set 2.4 add_value