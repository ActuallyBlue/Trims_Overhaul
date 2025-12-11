advancement revoke @s only blue:tr/quests/vex_hit
scoreboard players operation #.link blue.id = @s blue.id
execute if score #.vex.isolated blue.misc matches 1 facing entity @e[type=vindicator,tag=blue.tr.vex_quest,predicate=blue:shared/id_link,limit=1] eyes rotated ~ 0 run summon evoker_fangs ^ ^-0.25 ^-3 {Warmup:8,Tags:["blue.tr.vex_fang"]}
execute facing entity @e[type=vindicator,tag=blue.tr.vex_quest,predicate=blue:shared/id_link,limit=1] eyes rotated ~ 0 run summon evoker_fangs ^ ^-0.25 ^-1 {Warmup:4,Tags:["blue.tr.vex_fang"]}