function blue:shared/get_name
advancement grant @s[advancements={blue:tr/tags={trim_limit=false}}] only blue:tr/tags trim_limit
advancement grant @s[advancements={blue:tr/display/guides/ownership=false}] only blue:tr/display/guides/ownership
execute if score #.tr.armor_ownership blue.config matches 1 run return 0
execute if score #.tr.objective_announcements blue.config matches 1 run playsound entity.experience_orb.pickup player @a[distance=6..] 0 -128 0 0 0.65 0.9
data modify storage blue:trims logs.completion append from storage blue:trims logs.append
scoreboard players set #.temp Trims_Menu.BLUE 51
schedule function blue:tr/completion/z/delay 2t
advancement grant @s only blue:tr/inv_checks
tag @s add blue.tr.RTDCD