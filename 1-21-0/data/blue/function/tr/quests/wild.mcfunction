advancement revoke @s only blue:tr/quests/wild
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_wild=false}}] run return fail
execute if score #.tr.wild_completed blue.config matches 2 unless entity @s[tag=blue.tr.wild] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1.. if entity @s[advancements={blue:tr/tags={trim_limit=true}}] run return fail
execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/quests/wild_tames={cat=true}}]
execute if entity @s[advancements={blue:tr/quests/wild_tames={wolf=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={parrot=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={horse=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={donkey=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={mule=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={camel=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={llama=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={trader_llama=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={skeleton_horse=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={zombie_horse=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/wild_tames={non_vanilla=true}}] run scoreboard players add #.temp blue.misc 1
execute unless score #.temp blue.misc >= #.tr.wild_quest_tames blue.config run return fail
execute as @e[type=#blue:shared/peaceful,distance=..12] run function blue:tr/quests/wild_tamed
execute unless score #.temp blue.misc matches -3211 run return fail
execute store success score #.temp blue.misc if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=skeleton_horse]
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=zombie_horse] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=trader_llama] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=parrot] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=donkey] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=parrot] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=camel] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=horse] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=llama] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=wolf] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=mule] run scoreboard players add #.temp blue.misc 1
execute if entity @e[tag=blue.tr.tamed,distance=..14,limit=1,type=cat] run scoreboard players add #.temp blue.misc 1
tag @e[tag=blue.tr.tamed] remove blue.tr.tamed
execute if score #.temp blue.misc >= #.tr.wild_quest_cave blue.config run function blue:tr/completion/wild