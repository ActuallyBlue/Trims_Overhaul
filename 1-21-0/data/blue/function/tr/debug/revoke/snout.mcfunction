execute unless score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Snout","color":"#F2B01A"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Snout","color":"#F2B01A"}]
data modify storage blue:trims snout.owner.color set value dark_gray
data modify storage blue:trims snout.owner.text set value None
scoreboard players set #.tr.snout_completed blue.config 0
advancement revoke @a only blue:tr/display/snout
execute unless entity @a[tag=blue.tr.snout,limit=1] run scoreboard players set #.revoke_snout blue.misc 2
execute unless entity @a[tag=blue.tr.snout,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
tag @a[tag=blue.tr.snout] remove blue.tr.snout