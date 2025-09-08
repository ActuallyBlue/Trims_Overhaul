scoreboard players operation #.spire.origin blue.misc = #.temp blue.misc
execute if score #.temp blue.misc matches 1 run attribute @s generic.armor modifier add b163102f-0-5-0-1 "blue:tr.trim" 4 add
execute if score #.temp blue.misc matches 1 run attribute @s generic.attack_damage modifier add b163102f-0-5-0-1 "blue:tr.trim" 1.5 add
execute if score #.temp blue.misc matches 1 run return 0
attribute @s generic.attack_damage modifier remove b163102f-0-5-0-1
attribute @s generic.armor modifier remove b163102f-0-5-0-1