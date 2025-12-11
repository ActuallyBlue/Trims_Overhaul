execute unless score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Vex","color":"#CFC6A5"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 unless score #.tr.armor_ownership blue.config matches 1 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Vex","color":"#CFC6A5"}]
data modify storage blue:trims vex.owner.color set value dark_gray
data modify storage blue:trims vex.owner.text set value None
scoreboard players set #.tr.vex_completed blue.config 0
advancement revoke @a only blue:tr/display/vex
execute unless entity @a[tag=blue.tr.vex,limit=1] run scoreboard players set #.revoke_vex blue.misc 2
execute unless entity @a[tag=blue.tr.vex,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
tag @a[tag=blue.tr.vex] remove blue.tr.vex