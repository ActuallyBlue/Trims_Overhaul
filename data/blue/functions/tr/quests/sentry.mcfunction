execute if score #.difficulty blue.misc matches ..1 run scoreboard players set #.temp blue.misc 1
execute if score #.difficulty blue.misc matches 2 run scoreboard players set #.temp blue.misc 3
execute if score #.difficulty blue.misc matches 3.. run scoreboard players set #.temp blue.misc 5
execute if entity @s[advancements={blue:tr/quests/sentry={start_0=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/sentry={start_1=true}}] run scoreboard players add #.temp blue.misc 2
execute if entity @s[advancements={blue:tr/quests/sentry={start_2=true}}] run scoreboard players add #.temp blue.misc 3
execute if entity @s[advancements={blue:tr/quests/sentry={start_3=true}}] run scoreboard players add #.temp blue.misc 4
execute if entity @s[advancements={blue:tr/quests/sentry={start_4=true}}] run scoreboard players add #.temp blue.misc 5
execute if entity @s[advancements={blue:tr/quests/sentry={start_0=false,start_1=false}}] run scoreboard players add #.temp blue.misc 1
scoreboard players operation #.temp blue.misc *= #.tr.sentry_quest blue.config
execute if entity @s[advancements={blue:tr/quests/sentry={end=false}}] run summon area_effect_cloud ~ ~3 ~ {Rotation:[0,180],Radius:0,Duration:20000,Tags:["blue.tr.sentry_quest","smithed.entity","smithed.strict"],custom_particle:{type:"minecraft:block",block_state:"minecraft:air"},Particle:{type:"minecraft:block",block_state:"minecraft:air"}}
execute positioned ~ ~3 ~ store result entity @e[type=area_effect_cloud,tag=blue.tr.sentry_quest,distance=..0.1,sort=nearest,limit=1] Duration int 0.1 run scoreboard players get #.temp blue.misc
execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/quests/sentry={end=true}}]
advancement revoke @s only blue:tr/quests/sentry
execute unless score #.temp blue.misc matches 1 run return 0
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_sentry=false}}] run return 0
execute if score #.tr.sentry_completed blue.config matches 2 unless entity @s[tag=blue.tr.sentry] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
execute if entity @e[type=area_effect_cloud,tag=blue.tr.sentry_quest,distance=..100,limit=1] run function blue:tr/completion/sentry