advancement revoke @s only blue:tr/tasks/silence
execute if score #.tr.silence_completed blue.config matches 2 unless entity @s[tag=blue.tr.silence] run return fail
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_silence=false}}] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
scoreboard players operation #.temp blue.misc = #.tr.silence_task blue.config
execute if entity @a[distance=0.01..16,limit=1] run scoreboard players operation #.temp blue.misc /= #4 blue.misc
title @s actionbar [{"translate":"blue.tr.kill_wardens","fallback":"Kill Wardens","color":"#3842Cf"},{"text":" • ","color":"dark_gray"},{"score":{"name":"#.temp","objective":"blue.misc"}},{"text":"%"}]
execute if predicate {condition:"random_chance",chance:{min:0,max:{type:"score",target:{type:"fixed",name:"#.temp"},score:"blue.misc",scale:0.01}}} unless score #.tr.silence_completed blue.config matches 1 run function blue:tr/completion/silence
execute unless score #.tr.random_task_defender blue.config matches 0 if predicate {condition:"random_chance",chance:{min:0,max:{type:"score",target:{type:"fixed",name:"#.temp"},score:"blue.misc",scale:0.01}}} unless entity @s[tag=blue.tr.RTDCD] run function blue:tr/tasks/rtd/silence