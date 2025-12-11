advancement revoke @s only blue:tr/quests/vex_kill
scoreboard players operation #.link blue.id = @n[type=marker,tag=blue.tr.vex_passenger,predicate=!blue:shared/has_vehicle] blue.id
execute unless predicate blue:shared/id_link run return fail
kill @e[type=marker,tag=blue.tr.vex_passenger,predicate=blue:shared/id_link]
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_vex=false}}] run return fail
execute if score #.tr.vex_completed blue.config matches 2 unless entity @s[tag=blue.tr.vex] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
function blue:tr/completion/vex