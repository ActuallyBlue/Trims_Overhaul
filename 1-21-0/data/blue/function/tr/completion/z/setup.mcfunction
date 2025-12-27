function blue:shared/get_name
advancement grant @s[advancements={blue:tr/tags={trim_limit=false}}] only blue:tr/tags trim_limit
advancement grant @s[advancements={blue:tr/display/guides/objectives=false}] only blue:tr/display/guides/objectives
advancement grant @s[advancements={blue:tr/display/guides/ownership=false}] only blue:tr/display/guides/ownership
execute if score #.tr.armor_ownership blue.config matches 1 run return fail
execute if score #.tr.objective_announcements blue.config matches 1 run playsound entity.experience_orb.pickup player @a[distance=6..] 0 -128 0 0 0.8 1
data modify storage blue:trims logs.completion append from storage blue:trims logs.append
scoreboard players set #.temp Trims_Menu.BLUE 51
schedule function blue:tr/completion/z/delay 2t
tag @s add blue.tr.RTDCD