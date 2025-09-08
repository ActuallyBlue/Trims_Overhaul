execute unless score #.drop_temp blue.misc matches 1001 run tellraw @a [{"text":"- ","color":"dark_gray"},{"translate":"Tide","color":"#199ADD"}," ",{"translate":"blue.tr.was_revoked","fallback":"has been revoked","color":"gray"}]
execute if score #.drop_temp blue.misc matches 1001 run tellraw @a ["",{"text":"- ","color":"dark_gray"},{"selector":"@s"}," ",{"translate":"blue.tr.has_lost","fallback":"has lost","color":"gray"}," ",{"translate":"Tide","color":"#199ADD"}]
data modify storage blue:data trims.tide.owner.color set value dark_gray
data modify storage blue:data trims.tide.owner.text set value None
scoreboard players set #.tr.tide_completed blue.config 0
advancement revoke @a only blue:tr/actual/tide
execute unless entity @a[tag=blue.tr.tide,limit=1] run scoreboard players set #.revoke_tide blue.misc 2
execute unless entity @a[tag=blue.tr.tide,limit=1] run scoreboard players set #.admin_trim_revoke blue.misc 1
tag @a[tag=blue.tr.tide] remove blue.tr.tide