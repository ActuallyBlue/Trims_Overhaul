advancement revoke @s only blue:tr/quests/vex_kill
scoreboard players operation #.link blue.id = @e[tag=blue.tr.vex_passenger,predicate=!blue:shared/has_vehicle,sort=nearest,limit=1,type=marker] blue.id
execute unless predicate blue:shared/id_link run return 0
kill @e[tag=blue.tr.vex_passenger,predicate=blue:shared/id_link,type=marker]
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return 0
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return 0
function blue:tr/completion/vex