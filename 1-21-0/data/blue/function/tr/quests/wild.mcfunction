advancement revoke @s only blue:tr/quests/wild
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_wild=false}}] run return fail
execute if score #.tr.wild_completed blue.config matches 2 unless entity @s[tag=blue.tr.wild] run return fail
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return fail
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
execute unless score #.temp blue.misc matches 9.. run return fail
execute as @e[type=#blue:tr/peaceful,distance=..12] run function blue:tr/quests/wild_tamed
execute unless score #.temp blue.misc matches -3211 run return fail
execute store success score #.temp blue.misc if entity @e[type=skeleton_horse,tag=blue.tr.tamed,limit=1]
execute if entity @e[type=zombie_horse,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=trader_llama,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=parrot,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=donkey,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=parrot,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=camel,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=horse,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=llama,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=wolf,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=mule,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
execute if entity @e[type=cat,tag=blue.tr.tamed,limit=1] run scoreboard players add #.temp blue.misc 1
tag @e[tag=blue.tr.tamed] remove blue.tr.tamed
execute if score #.temp blue.misc matches 6.. run function blue:tr/completion/wild