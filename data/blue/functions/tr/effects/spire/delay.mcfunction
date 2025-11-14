execute store success score #.temp blue.misc if dimension the_end
execute unless score #.temp blue.misc matches 1 if entity @s[tag=blue.tr.dragon_egg] run scoreboard players set #.temp blue.misc 1
execute if score #.temp blue.misc matches 0 run effect give @s jump_boost 2 1 true
execute if score #.temp blue.misc matches 1 run function blue:tr/effects/spire/origin
execute store success score #.temp blue.misc if dimension the_end
execute if score #.temp blue.misc = #.spire.origin blue.misc run return 0
scoreboard players operation #.spire.origin blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 1.5 add
execute if score #.temp blue.misc matches 1 run attribute @s generic.armor modifier add b163102f-0-5-0-1 "blue:tr.trim" 4 add
execute if score #.temp blue.misc matches 1 run return 0
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
attribute @s generic.armor modifier remove b163102f-0-5-0-1