execute if entity @s[advancements={blue:tr/tags={tutorial_piercer=false}},predicate=blue:tr/raiser_charge] unless entity @s[scores={blue.tr.combat=..400},level=20..] run function blue:tr/effects/raiser/piercer/tutorial
execute store result score #.temp blue.misc run xp query @s levels
execute if score #.temp blue.misc = #.raiser.level_old blue.misc run return 0
scoreboard players operation #.raiser.level_old blue.misc = #.temp blue.misc
attribute @s generic.movement_speed modifier remove b163102f-0-5-0-1
attribute @s generic.attack_speed modifier remove b163102f-0-5-0-1
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
execute if entity @s[level=..20] run return 0
execute store result score #.temp blue.misc run gamerule keepInventory
execute if entity @s[level=20..40] run function blue:tr/effects/raiser/tier1
execute if entity @s[level=41..60] run function blue:tr/effects/raiser/tier2
execute if entity @s[level=61..80] run function blue:tr/effects/raiser/tier3
execute unless score #.temp blue.misc matches 1 if entity @s[level=81..100] run function blue:tr/effects/raiser/tier4
execute if score #.temp blue.misc matches 1 if entity @s[level=81..] run function blue:tr/effects/raiser/tier4
execute if score #.temp blue.misc matches 1 run return 0
execute if entity @s[level=101..125] run function blue:tr/effects/raiser/tier5
execute if entity @s[level=124..] run function blue:tr/effects/raiser/tier6