scoreboard players set #.temp blue.misc 1
data modify storage blue:data trims.fake_inv append from entity @s Item
data modify entity @s {} merge from storage blue:data trims.merge.item_data
scoreboard players add #.drop_temp blue.misc 1
tp @a[tag=blue.tr.killer,limit=1]