execute if entity @s[advancements={blue:tr/tags={tutorial_piercer=false}},predicate=blue:tr/raiser_charge] unless entity @s[scores={blue.tr.combat=..400},level=20..] run function blue:tr/effects/raiser/piercer/tutorial
execute store result score #.temp blue.misc run xp query @s levels
execute if score #.temp blue.misc = #.raiser.level_old blue.misc run return 0
scoreboard players operation #.raiser.level_old blue.misc = #.temp blue.misc
attribute @s generic.movement_speed modifier remove b163102f-0-5-0-1
attribute @s generic.attack_speed modifier remove b163102f-0-5-0-1
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
execute if entity @s[level=..20] run return 0
scoreboard players operation #.temp blue.misc < #.raiser.limit blue.config
execute store result storage blue:trims temp.dmg float 0.01 store result storage blue:trims temp.atk float 0.0009 store result storage blue:trims temp.spd float 0.00008 run scoreboard players get #.temp blue.misc
execute store result storage blue:trims temp.int int 1000 run scoreboard players get #.raiser.multiplier blue.config
function blue:tr/effects/raiser/multiplier with storage blue:trims temp
function blue:tr/effects/raiser/set_attributes with storage blue:trims temp