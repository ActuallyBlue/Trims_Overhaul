advancement grant @s[advancements={blue:tr/display/netherite=false}] only blue:tr/display/netherite
tag @s add blue.tr.mats.set
attribute @s[tag=!blue.tr.trim.ward] armor_toughness modifier add blue:tr.set 2.75 add_value
execute unless entity @s[tag=blue.tr.trim.ward] run return run attribute @s armor modifier add blue:tr.set 1.75 add_value
attribute @s armor_toughness modifier add blue:tr.set 3.85 add_value
attribute @s armor modifier add blue:tr.set 2.45 add_value