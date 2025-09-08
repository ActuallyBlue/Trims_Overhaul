advancement revoke @s only blue:tr/quests/ward
execute if score #.tr.require_unlock blue.config matches 1 if entity @s[advancements={blue:tr/tags={unlocked_ward=false}}] run return 0
execute if score #.tr.ward_completed blue.config matches 2 unless entity @s[tag=blue.tr.ward] run return 0
execute if score #.tr.limit_owned_trims blue.config matches 1 if entity @s[advancements={blue:tr/tags={has_trim=true}}] run return 0
scoreboard players reset #.temp0 blue.misc
execute on attacker run function blue:tr/quests/ward_attacker
execute store success score #.temp blue.misc if entity @s[advancements={blue:tr/quests/ward_stored={warden=true}}]
execute if entity @s[advancements={blue:tr/quests/ward_stored={zombie=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={spider=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={creeper=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={skeleton=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={enderman=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={endermite=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={cave_spider=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={zombie_villager=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={silverfish=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={drowned=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={wither_skeleton=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={blaze=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={piglin=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={zombified_piglin=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={hoglin=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={zoglin=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={magma_cube=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={piglin_brute=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={wither=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={vex=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={husk=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={vindicator=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={evoker=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={pillager=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={slime=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={ravager=true}}] run scoreboard players add #.temp blue.misc 1
execute if entity @s[advancements={blue:tr/quests/ward_stored={stray=true}}] run scoreboard players add #.temp blue.misc 1
execute if score #.temp0 blue.misc matches 1 run playsound block.note_block.bell player @s ~ ~ ~ 0.5 2
execute if score #.temp0 blue.misc matches 1 run title @s actionbar [{"translate":"blue.tr.ward_quest_info","fallback":"New Attack Blocked!","color":"#5C70AE"},{"text":" • ","color":"gray"},{"score":{"name":"#.temp","objective":"blue.misc"}},"/12"]
execute if score #.temp blue.misc matches 12.. run function blue:tr/completion/ward