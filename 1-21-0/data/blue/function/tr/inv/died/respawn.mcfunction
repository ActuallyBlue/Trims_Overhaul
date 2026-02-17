scoreboard players operation #.link blue.id = @s blue.id
execute in overworld store success score #.temp blue.misc run tp @e[x=200600,y=1,z=200600,dx=0,predicate=blue:shared/id_link,type=item] @s
execute if score #.temp blue.misc matches 1 run advancement grant @s[advancements={blue:tr/display/guides/inventory=false}] only blue:tr/display/guides/inventory
scoreboard players remove #.tr.respawning blue.misc 1
advancement grant @s only blue:tr/inv_checks
tag @s remove blue.tr.respawn