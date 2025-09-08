execute if entity @s[advancements={blue:tr/tags={tutorial_piercer=false}},predicate=blue:tr/raiser_charge] unless entity @s[scores={blue.tr.combat=..400},level=20..] run function blue:tr/effects/raiser/piercer/tutorial
execute store result score #.temp blue.misc run xp query @s levels
execute unless score #.temp blue.misc = #.raiser.level_old blue.misc run function blue:tr/effects/raiser/proficiency
scoreboard players operation #.raiser.level_old blue.misc = #.temp blue.misc