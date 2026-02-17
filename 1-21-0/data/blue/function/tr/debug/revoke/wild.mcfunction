execute unless score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Wild","color":"#00D529"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Wild","color":"#00D529"}]
data modify storage blue:trims wild.owner.color set value dark_gray
data modify storage blue:trims wild.owner.text set value None
scoreboard players set #.tr.wild_completed blue.config 0
advancement revoke @a only blue:tr/display/wild
execute unless entity @a[tag=blue.tr.wild,limit=1] run scoreboard players set #.revoke_wild blue.misc 2
execute unless entity @a[tag=blue.tr.wild,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
clear @a[tag=blue.tr.wild] wild_armor_trim_smithing_template
tag @a[tag=blue.tr.wild] remove blue.tr.wild