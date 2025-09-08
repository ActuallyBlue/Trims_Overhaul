scoreboard players operation #.link blue.id = @s blue.id
execute in overworld run tp @e[type=item,x=200600,y=1,z=200600,dx=0,predicate=blue:shared/id_link] @s
scoreboard players remove #.wait_for_respawn blue.misc 1
advancement grant @s only blue:tr/inv_checks
tag @s remove blue.tr.respawn