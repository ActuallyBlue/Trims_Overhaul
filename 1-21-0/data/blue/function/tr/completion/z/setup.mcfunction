function blue:shared/get_name
data modify storage blue:data trims.telemetry.completion append from storage blue:data trims.telemetry.append
execute if score #.tr.objective_announcements blue.config matches 1 run playsound entity.experience_orb.pickup player @a[distance=5..] 0 -128 0 0 0.8 1
advancement grant @s only blue:tr/tags has_trim
advancement grant @s[advancements={blue:tr/actual/general/guide1=false}] only blue:tr/actual/general/guide1
advancement grant @s[advancements={blue:tr/actual/general/guide3=false}] only blue:tr/actual/general/guide3
schedule function blue:tr/completion/z/delay 2t
tag @s add blue.tr.RTDCD
scoreboard players set #.temp TrimCMDs.BLUE 51