scoreboard players operation #.link blue.id = @s blue.id
execute in overworld store success score #.temp blue.misc run tp @e[x=200600,y=1,z=200600,dx=0,predicate=blue:shared/id_link,type=item] @s
execute if score #.temp blue.misc matches 1 run advancement grant @s[advancements={blue:tr/display/guides/inventory=false}] only blue:tr/display/guides/inventory
scoreboard players remove #.tr.respawning blue.misc 1
advancement grant @s only blue:tr/inv_checks
tag @s remove blue.tr.respawn
function blue:tr/inv/died/gamerule
execute if score #.temp blue.misc matches 0 run return fail
execute unless entity b163102f-0-0-0-100000000 run function blue:shared/load
item replace entity b163102f-0-0-0-100000000 armor.head from entity @s armor.head
item replace entity b163102f-0-0-0-100000000 armor.chest from entity @s armor.chest
item replace entity b163102f-0-0-0-100000000 armor.legs from entity @s armor.legs
item replace entity b163102f-0-0-0-100000000 armor.feet from entity @s armor.feet
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
advancement grant @s only blue:tr/inv_checks
item replace entity @s armor.head from entity b163102f-0-0-0-100000000 armor.head
item replace entity @s armor.chest from entity b163102f-0-0-0-100000000 armor.chest
item replace entity @s armor.legs from entity b163102f-0-0-0-100000000 armor.legs
item replace entity @s armor.feet from entity b163102f-0-0-0-100000000 armor.feet
advancement grant @s only blue:tr/inv_checks
execute if items entity @s armor.* *[trim~{material:redstone}] run effect give @s instant_health 1 0 true